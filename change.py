import os
import shutil
from pathlib import Path

def extract_matching_pairs_simple():
    """简洁版本，只提取匹配的文件对"""
    
    # 设置路径
    x86_dir = Path("x86_assembly")
    arm_dir = Path("arm_assembly")
    output_dir = Path("matched_pairs")
    
    # 创建输出文件夹
    output_dir.mkdir(exist_ok=True)
    
    # 收集x86文件
    x86_files = {}
    for file in x86_dir.glob("*_x86.s"):
        base_name = file.stem[:-4]  # 去掉_x86
        x86_files[base_name] = file
    
    # 收集ARM文件
    arm_files = {}
    for file in arm_dir.glob("*_arm.s"):
        base_name = file.stem[:-4]  # 去掉_arm
        arm_files[base_name] = file
    
    # 找出匹配的文件
    common_keys = set(x86_files.keys()) & set(arm_files.keys())
    
    if not common_keys:
        print("没有找到匹配的文件对！")
        return
    
    # 提取匹配的文件对
    for key in sorted(common_keys):
        # 为每对文件创建独立文件夹
        pair_folder = output_dir / key
        pair_folder.mkdir(exist_ok=True)
        
        # 复制文件
        shutil.copy2(x86_files[key], pair_folder / f"{key}_x86.s")
        shutil.copy2(arm_files[key], pair_folder / f"{key}_arm.s")
    
    print(f"成功提取了 {len(common_keys)} 对文件到 '{output_dir}' 文件夹")

if __name__ == "__main__":
    extract_matching_pairs_simple()