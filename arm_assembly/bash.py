#!/usr/bin/env python3
"""
x86_64_O0 后缀文件清理脚本
功能：安全删除带有 _x86_64_O0 后缀的文件和文件夹
"""

import os
import sys
import argparse
from pathlib import Path
from typing import List, Dict, Set, Tuple
import re
import shutil
from datetime import datetime
import logging
import json

# 配置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s',
    handlers=[
        logging.FileHandler(f'x86_cleanup_{datetime.now().strftime("%Y%m%d_%H%M%S")}.log'),
        logging.StreamHandler()
    ]
)
logger = logging.getLogger(__name__)

class X86O0FileCleaner:
    """x86_64_O0 文件清理器"""
    
    # 定义目标后缀模式
    TARGET_SUFFIXES = {
        'primary': ['_x86_64_O0.s', '_x86_64_O0.S'],  # 主要目标后缀
        'variations': [  # 可能的变体
            '_x86_64_o0.s', '_x86_64_o0.S',
            '_x86_64_O0', '_x86_64_o0',
            '_x86_O0.s', '_x86_o0.s',
            'x86_64_O0.s', 'x86_64_o0.s'
        ],
        'related': [  # 相关文件后缀
            '_x86_64_O1.s', '_x86_64_O2.s', '_x86_64_O3.s',
            '_x86_64_Os.s', '_x86_64_Oz.s'
        ]
    }
    
    def __init__(self, dry_run: bool = False, backup: bool = False, 
                 include_variations: bool = False, include_related: bool = False,
                 min_size: int = 0, max_size: int = 0):
        self.dry_run = dry_run
        self.backup = backup
        self.include_variations = include_variations
        self.include_related = include_related
        self.min_size = min_size
        self.max_size = max_size
        self.backup_dir = None
        self.stats = {
            'total_scanned': 0,
            'files_found': 0,
            'folders_found': 0,
            'files_deleted': 0,
            'folders_deleted': 0,
            'files_backed_up': 0,
            'total_freed': 0,
            'errors': 0
        }
        
        if self.backup:
            timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
            self.backup_dir = Path(f"backup_x86_files_{timestamp}")
            self.backup_dir.mkdir(exist_ok=True)
            logger.info(f"📦 备份目录: {self.backup_dir}")
    
    def get_target_patterns(self) -> List[str]:
        """获取目标模式列表"""
        patterns = self.TARGET_SUFFIXES['primary'].copy()
        
        if self.include_variations:
            patterns.extend(self.TARGET_SUFFIXES['variations'])
        
        if self.include_related:
            patterns.extend(self.TARGET_SUFFIXES['related'])
        
        return patterns
    
    def is_target_file(self, filename: str) -> Tuple[bool, str, str]:
        """判断文件是否为x86_64_O0目标文件"""
        patterns = self.get_target_patterns()
        
        for pattern in patterns:
            # 精确匹配后缀
            if filename.endswith(pattern):
                return True, 'exact_suffix', f"精确匹配后缀: {pattern}"
            
            # 正则表达式匹配（处理大小写变体）
            regex_pattern = pattern.replace('_', '[_-]?').replace('O0', '[Oo]0')
            if re.search(f'{regex_pattern}$', filename, re.IGNORECASE):
                return True, 'regex_match', f"正则匹配: {pattern}"
        
        # 检查文件名中包含目标关键词
        keywords = ['x86_64_O0', 'x86_64_o0', 'x86_O0', 'x86_o0']
        for keyword in keywords:
            if keyword.lower() in filename.lower():
                return True, 'keyword', f"包含关键词: {keyword}"
        
        return False, '', "不是目标文件"
    
    def is_target_folder(self, foldername: str) -> Tuple[bool, str, str]:
        """判断文件夹是否为x86相关文件夹"""
        folder_patterns = [
            'x86', 'x86_64', 'x86_files', 'x86_assembly',
            'x86_O0', 'x86_64_O0', 'matched_pairs'
        ]
        
        for pattern in folder_patterns:
            if pattern.lower() in foldername.lower():
                return True, 'folder_pattern', f"文件夹匹配: {pattern}"
        
        return False, '', "不是目标文件夹"
    
    def should_process_file(self, filepath: Path) -> Tuple[bool, str]:
        """判断是否应该处理该文件"""
        if not filepath.exists():
            return False, "文件不存在"
        
        if not filepath.is_file():
            return False, "不是文件"
        
        try:
            file_size = filepath.stat().st_size
            
            if self.min_size > 0 and file_size < self.min_size:
                return False, f"文件太小 ({file_size} < {self.min_size})"
            
            if self.max_size > 0 and file_size > self.max_size:
                return False, f"文件太大 ({file_size} > {self.max_size})"
            
            return True, f"大小: {self.format_size(file_size)}"
            
        except Exception as e:
            return False, f"无法访问文件: {e}"
    
    def should_process_folder(self, folderpath: Path) -> Tuple[bool, str]:
        """判断是否应该处理该文件夹"""
        if not folderpath.exists():
            return False, "文件夹不存在"
        
        if not folderpath.is_dir():
            return False, "不是文件夹"
        
        try:
            # 检查文件夹是否为空
            if any(folderpath.iterdir()):
                return True, "文件夹非空"
            else:
                return True, "空文件夹"
                
        except Exception as e:
            return False, f"无法访问文件夹: {e}"
    
    def backup_file(self, filepath: Path) -> bool:
        """备份文件"""
        if not self.backup or not self.backup_dir:
            return True
        
        try:
            # 保持目录结构
            relative_path = filepath.relative_to(Path.cwd()) if filepath.is_relative_to(Path.cwd()) else filepath
            backup_path = self.backup_dir / relative_path
            
            # 创建父目录
            backup_path.parent.mkdir(parents=True, exist_ok=True)
            
            shutil.copy2(filepath, backup_path)
            logger.debug(f"备份文件: {filepath} -> {backup_path}")
            self.stats['files_backed_up'] += 1
            return True
            
        except Exception as e:
            logger.error(f"备份文件失败 {filepath}: {e}")
            return False
    
    def format_size(self, size_bytes: int) -> str:
        """格式化文件大小"""
        for unit in ['B', 'KB', 'MB', 'GB']:
            if size_bytes < 1024.0:
                return f"{size_bytes:.1f} {unit}"
            size_bytes /= 1024.0
        return f"{size_bytes:.1f} TB"
    
    def delete_file(self, filepath: Path) -> bool:
        """删除文件"""
        try:
            if self.dry_run:
                file_size = filepath.stat().st_size
                logger.info(f"🗑️ [模拟] 删除文件: {filepath.name} ({self.format_size(file_size)})")
                return True
            
            # 获取文件大小
            file_size = filepath.stat().st_size
            
            # 备份（如果需要）
            if not self.backup_file(filepath):
                return False
            
            # 实际删除
            filepath.unlink()
            logger.info(f"🗑️ 删除文件: {filepath.name} ({self.format_size(file_size)})")
            
            self.stats['files_deleted'] += 1
            self.stats['total_freed'] += file_size
            return True
            
        except Exception as e:
            logger.error(f"删除文件失败 {filepath}: {e}")
            self.stats['errors'] += 1
            return False
    
    def delete_folder(self, folderpath: Path) -> bool:
        """删除文件夹"""
        try:
            if self.dry_run:
                logger.info(f"📁 [模拟] 删除文件夹: {folderpath.name}")
                return True
            
            # 递归删除文件夹
            shutil.rmtree(folderpath)
            logger.info(f"📁 删除文件夹: {folderpath.name}")
            
            self.stats['folders_deleted'] += 1
            return True
            
        except Exception as e:
            logger.error(f"删除文件夹失败 {folderpath}: {e}")
            self.stats['errors'] += 1
            return False
    
    def scan_directory(self, directory: Path, recursive: bool = True) -> Tuple[List[Dict], List[Dict]]:
        """扫描目录中的目标文件和文件夹"""
        target_files = []
        target_folders = []
        
        try:
            if recursive:
                iterator = directory.rglob('*')  # 递归
            else:
                iterator = directory.glob('*')   # 非递归
            
            for item in iterator:
                self.stats['total_scanned'] += 1
                
                if item.is_file():
                    # 检查文件
                    is_target, pattern, reason = self.is_target_file(item.name)
                    if is_target:
                        should_process, process_reason = self.should_process_file(item)
                        
                        file_info = {
                            'type': 'file',
                            'path': str(item),
                            'name': item.name,
                            'size': item.stat().st_size,
                            'pattern': pattern,
                            'reason': reason,
                            'should_process': should_process,
                            'process_reason': process_reason
                        }
                        
                        target_files.append(file_info)
                        self.stats['files_found'] += 1
                        
                        if self.stats['files_found'] <= 3:
                            status = "可处理" if should_process else "跳过"
                            logger.info(f"🔍 发现目标文件: {item.name} ({status})")
                
                elif item.is_dir():
                    # 检查文件夹
                    is_target, pattern, reason = self.is_target_folder(item.name)
                    if is_target:
                        should_process, process_reason = self.should_process_folder(item)
                        
                        folder_info = {
                            'type': 'folder',
                            'path': str(item),
                            'name': item.name,
                            'pattern': pattern,
                            'reason': reason,
                            'should_process': should_process,
                            'process_reason': process_reason
                        }
                        
                        target_folders.append(folder_info)
                        self.stats['folders_found'] += 1
                        
                        if self.stats['folders_found'] <= 3:
                            status = "可处理" if should_process else "跳过"
                            logger.info(f"📁 发现目标文件夹: {item.name} ({status})")
        
        except Exception as e:
            logger.error(f"扫描目录失败 {directory}: {e}")
        
        return target_files, target_folders
    
    def generate_report(self, target_files: List[Dict], target_folders: List[Dict], directory: Path) -> Dict:
        """生成报告"""
        processed_files = [f for f in target_files if f['should_process']]
        processed_folders = [f for f in target_folders if f['should_process']]
        
        # 按模式统计文件
        file_pattern_stats = {}
        for file in target_files:
            pattern = file['pattern']
            if pattern not in file_pattern_stats:
                file_pattern_stats[pattern] = 0
            file_pattern_stats[pattern] += 1
        
        # 按模式统计文件夹
        folder_pattern_stats = {}
        for folder in target_folders:
            pattern = folder['pattern']
            if pattern not in folder_pattern_stats:
                folder_pattern_stats[pattern] = 0
            folder_pattern_stats[pattern] += 1
        
        return {
            'timestamp': datetime.now().isoformat(),
            'config': {
                'directory': str(directory),
                'dry_run': self.dry_run,
                'backup': self.backup,
                'include_variations': self.include_variations,
                'include_related': self.include_related,
                'min_size': self.min_size,
                'max_size': self.max_size,
                'backup_dir': str(self.backup_dir) if self.backup_dir else None
            },
            'statistics': {
                'total_items_scanned': self.stats['total_scanned'],
                'target_files_found': self.stats['files_found'],
                'target_folders_found': self.stats['folders_found'],
                'files_processed': len(processed_files),
                'folders_processed': len(processed_folders),
                'files_deleted': self.stats['files_deleted'],
                'folders_deleted': self.stats['folders_deleted'],
                'files_backed_up': self.stats['files_backed_up'],
                'total_space_freed': self.stats['total_freed'],
                'total_space_freed_formatted': self.format_size(self.stats['total_freed']),
                'errors': self.stats['errors']
            },
            'pattern_statistics': {
                'files': file_pattern_stats,
                'folders': folder_pattern_stats
            },
            'target_patterns': self.get_target_patterns(),
            'processed_files': processed_files,
            'processed_folders': processed_folders
        }
    
    def print_report(self, report: Dict):
        """打印报告"""
        stats = report['statistics']
        config = report['config']
        patterns = report['target_patterns']
        
        print("\n" + "="*70)
        print("x86_64_O0 文件清理报告")
        print("="*70)
        print(f"时间: {report['timestamp']}")
        print(f"扫描目录: {config['directory']}")
        print(f"干运行模式: {'是' if config['dry_run'] else '否'}")
        print(f"备份模式: {'是' if config['backup'] else '否'}")
        print(f"包含变体: {'是' if config['include_variations'] else '否'}")
        print(f"包含相关文件: {'是' if config['include_related'] else '否'}")
        print(f"目标模式: {', '.join(patterns[:3])}...")
        print()
        
        # 统计信息
        print("📊 扫描统计:")
        print(f"  扫描项目总数: {stats['total_items_scanned']}")
        print(f"  发现目标文件: {stats['target_files_found']}")
        print(f"  发现目标文件夹: {stats['target_folders_found']}")
        print(f"  可处理文件: {stats['files_processed']}")
        print(f"  可处理文件夹: {stats['folders_processed']}")
        print(f"  实际删除文件: {stats['files_deleted']}")
        print(f"  实际删除文件夹: {stats['folders_deleted']}")
        print(f"  备份文件: {stats['files_backed_up']}")
        print(f"  释放空间: {stats['total_space_freed_formatted']}")
        print(f"  错误数: {stats['errors']}")
        print()
        
        # 模式统计
        pattern_stats = report['pattern_statistics']
        if pattern_stats['files']:
            print("🔍 文件匹配模式统计:")
            for pattern, count in sorted(pattern_stats['files'].items(), key=lambda x: x[1], reverse=True)[:5]:
                print(f"  {pattern}: {count} 个文件")
        
        if pattern_stats['folders']:
            print("📁 文件夹匹配模式统计:")
            for pattern, count in sorted(pattern_stats['folders'].items(), key=lambda x: x[1], reverse=True)[:5]:
                print(f"  {pattern}: {count} 个文件夹")
        print()
        
        # 处理的文件
        processed_files = report['processed_files']
        if processed_files:
            print(f"🗑️ 处理的文件 ({len(processed_files)}):")
            for i, file in enumerate(processed_files[:8]):
                status = "[模拟] " if config['dry_run'] else ""
                print(f"  {i+1}. {file['name']} ({self.format_size(file['size'])})")
                print(f"     模式: {file['pattern']} - {file['reason']}")
            if len(processed_files) > 8:
                print(f"  ... 还有 {len(processed_files)-8} 个文件")
            print()
        
        # 处理的文件夹
        processed_folders = report['processed_folders']
        if processed_folders:
            print(f"📁 处理的文件夹 ({len(processed_folders)}):")
            for i, folder in enumerate(processed_folders[:5]):
                status = "[模拟] " if config['dry_run'] else ""
                print(f"  {i+1}. {folder['name']}")
                print(f"     模式: {folder['pattern']} - {folder['reason']}")
            if len(processed_folders) > 5:
                print(f"  ... 还有 {len(processed_folders)-5} 个文件夹")
            print()
        
        # 总结
        if config['dry_run']:
            print("💡 干运行模式完成 - 没有实际删除")
            print("   使用 --execute 参数实际执行删除操作")
        else:
            if stats['files_deleted'] > 0 or stats['folders_deleted'] > 0:
                print(f"🎉 清理完成! 释放了 {stats['total_space_freed_formatted']} 空间")
            else:
                print("ℹ️ 没有找到可删除的目标文件")
        
        print("="*70)

def main():
    """主函数"""
    parser = argparse.ArgumentParser(description="x86_64_O0 文件清理工具")
    parser.add_argument("directory", nargs="?", default=".", 
                       help="要扫描的目录（默认: 当前目录）")
    parser.add_argument("--execute", action="store_true",
                       help="实际执行删除操作（默认: 干运行模式）")
    parser.add_argument("--backup", "-b", action="store_true",
                       help="删除前备份文件")
    parser.add_argument("--include-variations", "-v", action="store_true",
                       help="包含变体后缀（如 _x86_64_o0.s, _x86_O0.s 等）")
    parser.add_argument("--include-related", "-r", action="store_true",
                       help="包含相关文件（如 _x86_64_O1.s, _x86_64_O2.s 等）")
    parser.add_argument("--recursive", "-R", action="store_true", default=True,
                       help="递归扫描子目录（默认: 是）")
    parser.add_argument("--no-recursive", action="store_true",
                       help="不递归扫描子目录")
    parser.add_argument("--min-size", type=int, default=0,
                       help="最小文件大小（字节）")
    parser.add_argument("--max-size", type=int, default=0,
                       help="最大文件大小（字节，0表示无限制）")
    parser.add_argument("--verbose", action="store_true",
                       help="详细输出")
    parser.add_argument("--json", action="store_true",
                       help="输出JSON格式报告")
    parser.add_argument("--output", default="x86_cleanup_report.json",
                       help="报告输出文件")
    
    args = parser.parse_args()
    
    # 设置日志级别
    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)
    
    # 处理递归选项
    recursive = args.recursive and not args.no_recursive
    
    try:
        target_dir = Path(args.directory)
        if not target_dir.exists():
            logger.error(f"❌ 目录不存在: {target_dir}")
            return 1
        
        # 创建清理器
        cleaner = X86O0FileCleaner(
            dry_run=not args.execute,
            backup=args.backup,
            include_variations=args.include_variations,
            include_related=args.include_related,
            min_size=args.min_size,
            max_size=args.max_size
        )
        
        logger.info(f"🔍 开始扫描目录: {target_dir}")
        logger.info(f"目标模式: {', '.join(cleaner.get_target_patterns()[:3])}...")
        logger.info(f"递归扫描: {'是' if recursive else '否'}")
        logger.info(f"干运行模式: {'是' if not args.execute else '否'}")
        
        # 扫描目录
        target_files, target_folders = cleaner.scan_directory(target_dir, recursive)
        
        if not target_files and not target_folders:
            logger.info("✅ 没有找到目标文件或文件夹")
            return 0
        
        # 处理文件
        for file_info in target_files:
            if file_info['should_process']:
                filepath = Path(file_info['path'])
                cleaner.delete_file(filepath)
        
        # 处理文件夹（先处理文件，再处理文件夹）
        for folder_info in target_folders:
            if folder_info['should_process']:
                folderpath = Path(folder_info['path'])
                cleaner.delete_folder(folderpath)
        
        # 生成报告
        report = cleaner.generate_report(target_files, target_folders, target_dir)
        
        # 打印报告
        cleaner.print_report(report)
        
        # 保存JSON报告
        if args.json:
            with open(args.output, 'w', encoding='utf-8') as f:
                json.dump(report, f, ensure_ascii=False, indent=2)
            logger.info(f"📄 JSON报告已保存到: {args.output}")
        
        return 0
        
    except KeyboardInterrupt:
        logger.info("操作被用户中断")
        return 130
    except Exception as e:
        logger.error(f"处理过程中发生错误: {e}")
        return 1

if __name__ == "__main__":
    sys.exit(main())