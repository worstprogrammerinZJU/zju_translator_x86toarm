import os
import sys
import re
from collections import defaultdict

def find_corresponding_files(arm_dir, x86_dir):
    """
    在两个目录中查找对应的文件
    
    文件命名格式：
    arm_assembly: 文件名_arm64_O0.s
    x86_assembly: 文件名_x86_64_O0.s
    """
    
    # 获取两个目录中的文件
    arm_files = [f for f in os.listdir(arm_dir) 
                 if f.endswith('_arm64_O0.s') and os.path.isfile(os.path.join(arm_dir, f))]
    
    x86_files = [f for f in os.listdir(x86_dir) 
                 if f.endswith('_x86_64_O0.s') and os.path.isfile(os.path.join(x86_dir, f))]
    
    print(f"ARM目录中找到 {len(arm_files)} 个文件:")
    for f in sorted(arm_files)[:10]:  # 只显示前10个
        print(f"  {f}")
    if len(arm_files) > 10:
        print(f"  ... 还有 {len(arm_files) - 10} 个文件")
    
    print(f"\nx86目录中找到 {len(x86_files)} 个文件:")
    for f in sorted(x86_files)[:10]:
        print(f"  {f}")
    if len(x86_files) > 10:
        print(f"  ... 还有 {len(x86_files) - 10} 个文件")
    
    # 提取文件名前缀（去掉后缀）
    arm_file_map = {}
    for f in arm_files:
        # 去掉 _arm64_O0.s 后缀
        prefix = f[:-12]  # 移除 "_arm64_O0.s" (12个字符)
        arm_file_map[prefix] = f
    
    x86_file_map = {}
    for f in x86_files:
        # 去掉 _x86_64_O0.s 后缀
        prefix = f[:-13]  # 移除 "_x86_64_O0.s" (13个字符)
        x86_file_map[prefix] = f
    
    # 找出两个目录中都存在的文件前缀
    common_prefixes = set(arm_file_map.keys()) & set(x86_file_map.keys())
    only_in_arm = set(arm_file_map.keys()) - set(x86_file_map.keys())
    only_in_x86 = set(x86_file_map.keys()) - set(arm_file_map.keys())
    
    return {
        'common_pairs': [(prefix, arm_file_map[prefix], x86_file_map[prefix]) 
                        for prefix in sorted(common_prefixes)],
        'only_in_arm': [(prefix, arm_file_map[prefix]) for prefix in sorted(only_in_arm)],
        'only_in_x86': [(prefix, x86_file_map[prefix]) for prefix in sorted(only_in_x86)],
        'arm_dir': arm_dir,
        'x86_dir': x86_dir
    }

def rename_corresponding_files():
    # 设置目录路径
    arm_dir = "arm_assembly"
    x86_dir = "x86_assembly"
    
    # 检查目录是否存在
    if not os.path.exists(arm_dir):
        print(f"错误: ARM目录 '{arm_dir}' 不存在！")
        return
    
    if not os.path.exists(x86_dir):
        print(f"错误: x86目录 '{x86_dir}' 不存在！")
        return
    
    print("批量重命名工具 - 配对重命名ARM和x86汇编文件")
    print("=" * 60)
    print(f"ARM目录: {os.path.abspath(arm_dir)}")
    print(f"x86目录: {os.path.abspath(x86_dir)}")
    print("=" * 60)
    
    # 查找对应的文件
    file_info = find_corresponding_files(arm_dir, x86_dir)
    
    common_pairs = file_info['common_pairs']
    only_in_arm = file_info['only_in_arm']
    only_in_x86 = file_info['only_in_x86']
    
    print(f"\n找到 {len(common_pairs)} 对对应的文件:")
    for i, (prefix, arm_file, x86_file) in enumerate(common_pairs[:20], 1):  # 只显示前20对
        print(f"{i:3d}. {prefix}")
        print(f"     ARM: {arm_file}")
        print(f"     x86: {x86_file}")
    if len(common_pairs) > 20:
        print(f"    ... 还有 {len(common_pairs) - 20} 对文件")
    
    if only_in_arm:
        print(f"\n警告: {len(only_in_arm)} 个文件只在ARM目录中存在:")
        for prefix, arm_file in only_in_arm[:10]:
            print(f"  {arm_file}")
        if len(only_in_arm) > 10:
            print(f"  ... 还有 {len(only_in_arm) - 10} 个文件")
    
    if only_in_x86:
        print(f"\n警告: {len(only_in_x86)} 个文件只在x86目录中存在:")
        for prefix, x86_file in only_in_x86[:10]:
            print(f"  {x86_file}")
        if len(only_in_x86) > 10:
            print(f"  ... 还有 {len(only_in_x86) - 10} 个文件")
    
    if not common_pairs:
        print("\n错误: 没有找到对应的文件对！")
        return
    
    # 确认操作
    print(f"\n" + "=" * 60)
    confirm = input(f"是否继续重命名 {len(common_pairs)} 对文件？(输入 'yes' 继续): ")
    if confirm.lower() != 'yes':
        print("操作已取消。")
        return
    
    # 保存重命名记录
    rename_log = []
    success_count = 0
    
    # 重命名对应的文件对
    for i, (prefix, arm_file, x86_file) in enumerate(common_pairs, 1):
        new_arm_name = f"{i}.arm.s"
        new_x86_name = f"{i}.x86.s"
        
        old_arm_path = os.path.join(arm_dir, arm_file)
        new_arm_path = os.path.join(arm_dir, new_arm_name)
        
        old_x86_path = os.path.join(x86_dir, x86_file)
        new_x86_path = os.path.join(x86_dir, new_x86_name)
        
        try:
            # 重命名ARM文件
            os.rename(old_arm_path, new_arm_path)
            
            # 重命名x86文件
            os.rename(old_x86_path, new_x86_path)
            
            rename_log.append({
                'prefix': prefix,
                'old_arm': arm_file,
                'new_arm': new_arm_name,
                'old_x86': x86_file,
                'new_x86': new_x86_name
            })
            
            print(f"✓ {i:3d}. {prefix}")
            print(f"     ARM: {arm_file} -> {new_arm_name}")
            print(f"     x86: {x86_file} -> {new_x86_name}")
            
            success_count += 1
            
        except Exception as e:
            print(f"✗ 重命名失败 {prefix}: {e}")
    
    # 处理只在其中一个目录中存在的文件
    if only_in_arm:
        print(f"\n处理 {len(only_in_arm)} 个只在ARM目录中的文件:")
        for prefix, arm_file in only_in_arm:
            i = len(common_pairs) + only_in_arm.index((prefix, arm_file)) + 1
            new_arm_name = f"{i}_arm_only.arm.s"
            old_arm_path = os.path.join(arm_dir, arm_file)
            new_arm_path = os.path.join(arm_dir, new_arm_name)
            
            try:
                os.rename(old_arm_path, new_arm_path)
                rename_log.append({
                    'prefix': prefix,
                    'old_arm': arm_file,
                    'new_arm': new_arm_name,
                    'old_x86': None,
                    'new_x86': None
                })
                print(f"  ARM only: {arm_file} -> {new_arm_name}")
                success_count += 1
            except Exception as e:
                print(f"  ✗ 重命名失败 {arm_file}: {e}")
    
    if only_in_x86:
        print(f"\n处理 {len(only_in_x86)} 个只在x86目录中的文件:")
        for prefix, x86_file in only_in_x86:
            i = len(common_pairs) + len(only_in_arm) + only_in_x86.index((prefix, x86_file)) + 1
            new_x86_name = f"{i}_x86_only.x86.s"
            old_x86_path = os.path.join(x86_dir, x86_file)
            new_x86_path = os.path.join(x86_dir, new_x86_name)
            
            try:
                os.rename(old_x86_path, new_x86_path)
                rename_log.append({
                    'prefix': prefix,
                    'old_arm': None,
                    'new_arm': None,
                    'old_x86': x86_file,
                    'new_x86': new_x86_name
                })
                print(f"  x86 only: {x86_file} -> {new_x86_name}")
                success_count += 1
            except Exception as e:
                print(f"  ✗ 重命名失败 {x86_file}: {e}")
    
    # 保存重命名记录
    if rename_log:
        with open('rename_log.txt', 'w', encoding='utf-8') as f:
            f.write("重命名记录\n")
            f.write("=" * 60 + "\n")
            f.write(f"ARM目录: {arm_dir}\n")
            f.write(f"x86目录: {x86_dir}\n")
            f.write(f"重命名时间: {sys.argv[0]}\n")
            f.write("=" * 60 + "\n\n")
            
            for i, record in enumerate(rename_log, 1):
                f.write(f"{i}. 原始前缀: {record['prefix']}\n")
                if record['old_arm']:
                    f.write(f"   ARM: {record['old_arm']} -> {record['new_arm']}\n")
                if record['old_x86']:
                    f.write(f"   x86: {record['old_x86']} -> {record['new_x86']}\n")
                f.write("\n")
        
        print(f"\n重命名记录已保存到: rename_log.txt")
    
    print(f"\n完成！成功重命名了 {success_count} 个文件。")
    if common_pairs:
        print(f"  - 对应的文件对: {len(common_pairs)} 对")
    if only_in_arm:
        print(f"  - 仅ARM文件: {len(only_in_arm)} 个")
    if only_in_x86:
        print(f"  - 仅x86文件: {len(only_in_x86)} 个")

if __name__ == "__main__":
    print("批量文件配对重命名工具")
    print("=" * 60)
    print("功能: 将 arm_assembly/ 和 x86_assembly/ 目录中的对应文件重命名")
    print("      对应的文件会重命名为相同的序号，不同后缀:")
    print("      ARM文件: 序号.arm.s")
    print("      x86文件: 序号.x86.s")
    print("=" * 60)
    
    rename_corresponding_files()