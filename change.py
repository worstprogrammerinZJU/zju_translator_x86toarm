import os
import shutil
from pathlib import Path

def extract_matching_pairs():
    """按照 _x86_64_O0.s 和 _arm64_O0.s 格式提取匹配的文件对"""
    
    # 设置路径
    x86_dir = Path("x86_assembly")
    arm_dir = Path("arm_assembly")
    output_dir = Path("matched_pairs")
    
    # 创建输出文件夹
    output_dir.mkdir(exist_ok=True)
    
    # 定义后缀模式
    x86_suffix = "_x86_64_O0.s"
    arm_suffix = "_arm64_O0.s"
    
    # 收集x86文件
    x86_files = {}
    for file in x86_dir.glob(f"*{x86_suffix}"):
        # 提取基础名称：去掉 _x86_64_O0.s
        filename = file.name
        if filename.endswith(x86_suffix):
            base_name = filename[:-len(x86_suffix)]  # 去掉后缀
            x86_files[base_name] = file
        else:
            print(f"警告: x86文件格式不匹配: {filename}")
    
    # 收集ARM文件
    arm_files = {}
    for file in arm_dir.glob(f"*{arm_suffix}"):
        filename = file.name
        if filename.endswith(arm_suffix):
            base_name = filename[:-len(arm_suffix)]  # 去掉后缀
            arm_files[base_name] = file
        else:
            print(f"警告: ARM文件格式不匹配: {filename}")
    
    # 找出匹配的文件
    common_keys = set(x86_files.keys()) & set(arm_files.keys())
    
    if not common_keys:
        print("没有找到匹配的文件对！")
        print(f"x86文件数: {len(x86_files)}")
        print(f"ARM文件数: {len(arm_files)}")
        
        # 打印不匹配的文件
        x86_only = set(x86_files.keys()) - set(arm_files.keys())
        arm_only = set(arm_files.keys()) - set(x86_files.keys())
        
        if x86_only:
            print(f"\n只在x86中存在的文件 ({len(x86_only)}个):")
            for i, key in enumerate(list(x86_only)[:10]):  # 只显示前10个
                print(f"  {key}{x86_suffix}")
            if len(x86_only) > 10:
                print(f"  ... 还有 {len(x86_only)-10} 个")
        
        if arm_only:
            print(f"\n只在ARM中存在的文件 ({len(arm_only)}个):")
            for i, key in enumerate(list(arm_only)[:10]):  # 只显示前10个
                print(f"  {key}{arm_suffix}")
            if len(arm_only) > 10:
                print(f"  ... 还有 {len(arm_only)-10} 个")
        
        return
    
    # 提取匹配的文件对
    matched_count = 0
    for key in sorted(common_keys):
        # 为每对文件创建独立文件夹
        pair_folder = output_dir / key
        pair_folder.mkdir(exist_ok=True)
        
        # 复制文件
        try:
            shutil.copy2(x86_files[key], pair_folder / f"{key}_x86.s")
            shutil.copy2(arm_files[key], pair_folder / f"{key}_arm.s")
            matched_count += 1
            
            if matched_count <= 3:  # 打印前3个成功的例子
                print(f"匹配 {matched_count}: {key}")
                print(f"  x86: {x86_files[key].name}")
                print(f"  arm: {arm_files[key].name}")
                print()
                
        except Exception as e:
            print(f"错误: 复制文件 {key} 时出错: {e}")
    
    print(f"成功提取了 {matched_count} 对文件到 '{output_dir}' 文件夹")
    
    # 打印统计信息
    print(f"\n统计信息:")
    print(f"x86文件总数: {len(x86_files)}")
    print(f"ARM文件总数: {len(arm_files)}")
    print(f"匹配文件对数: {matched_count}")
    print(f"匹配率: {matched_count/min(len(x86_files), len(arm_files))*100:.1f}%")

# 更灵活的版本，支持不同的优化级别
def extract_matching_pairs_flexible():
    """支持不同优化级别的版本"""
    
    x86_dir = Path("x86_assembly")
    arm_dir = Path("arm_assembly")
    output_dir = Path("matched_pairs_flexible")
    
    output_dir.mkdir(exist_ok=True)
    
    # 支持的优化级别
    optimizations = ['O0', 'O1', 'O2', 'O3', 'Os', 'Oz']
    
    # 收集所有匹配的文件
    all_matches = {}
    
    for opt in optimizations:
        x86_suffix = f"_x86_64_{opt}.s"
        arm_suffix = f"_arm64_{opt}.s"
        
        # 收集x86文件
        x86_files = {}
        for file in x86_dir.glob(f"*{x86_suffix}"):
            filename = file.name
            if filename.endswith(x86_suffix):
                base_name = filename[:-len(x86_suffix)]
                x86_files[base_name] = file
        
        # 收集ARM文件
        arm_files = {}
        for file in arm_dir.glob(f"*{arm_suffix}"):
            filename = file.name
            if filename.endswith(arm_suffix):
                base_name = filename[:-len(arm_suffix)]
                arm_files[base_name] = file
        
        # 找出匹配的文件
        common_keys = set(x86_files.keys()) & set(arm_files.keys())
        
        for key in common_keys:
            if key not in all_matches:
                all_matches[key] = []
            all_matches[key].append({
                'x86': x86_files[key],
                'arm': arm_files[key],
                'opt': opt
            })
    
    if not all_matches:
        print("没有找到匹配的文件对！")
        return
    
    # 提取匹配的文件对
    matched_count = 0
    for key, matches in all_matches.items():
        # 为每对文件创建独立文件夹
        pair_folder = output_dir / key
        pair_folder.mkdir(exist_ok=True)
        
        # 对于每个优化级别
        for match in matches:
            try:
                suffix = f"_{match['opt']}"
                shutil.copy2(match['x86'], pair_folder / f"{key}_x86{suffix}.s")
                shutil.copy2(match['arm'], pair_folder / f"{key}_arm{suffix}.s")
                matched_count += 1
                
            except Exception as e:
                print(f"错误: 复制文件 {key} 时出错: {e}")
    
    print(f"成功提取了 {len(all_matches)} 个文件的 {matched_count} 对汇编文件")
    
    # 统计每个优化级别的匹配数
    print(f"\n优化级别统计:")
    for opt in optimizations:
        count = 0
        for key, matches in all_matches.items():
            for match in matches:
                if match['opt'] == opt:
                    count += 1
        if count > 0:
            print(f"  {opt}: {count} 对")

# 简单的平面结构版本（不创建子文件夹）
def extract_matching_pairs_flat():
    """平面结构版本，所有文件放在同一目录"""
    
    x86_dir = Path("x86_assembly")
    arm_dir = Path("arm_assembly")
    output_dir = Path("matched_pairs_flat")
    
    output_dir.mkdir(exist_ok=True)
    
    x86_suffix = "_x86_64_O0.s"
    arm_suffix = "_arm64_O0.s"
    
    # 收集x86文件
    x86_files = {}
    for file in x86_dir.glob(f"*{x86_suffix}"):
        filename = file.name
        if filename.endswith(x86_suffix):
            base_name = filename[:-len(x86_suffix)]
            x86_files[base_name] = file
    
    # 收集ARM文件
    arm_files = {}
    for file in arm_dir.glob(f"*{arm_suffix}"):
        filename = file.name
        if filename.endswith(arm_suffix):
            base_name = filename[:-len(arm_suffix)]
            arm_files[base_name] = file
    
    # 找出匹配的文件
    common_keys = set(x86_files.keys()) & set(arm_files.keys())
    
    if not common_keys:
        print("没有找到匹配的文件对！")
        return
    
    # 复制文件
    for key in sorted(common_keys):
        try:
            shutil.copy2(x86_files[key], output_dir / f"{key}_x86.s")
            shutil.copy2(arm_files[key], output_dir / f"{key}_arm.s")
        except Exception as e:
            print(f"错误: 复制文件 {key} 时出错: {e}")
    
    print(f"成功提取了 {len(common_keys)} 对文件到 '{output_dir}' 文件夹")
    print(f"文件结构:")
    print(f"  {output_dir}/")
    print(f"    ├── [basename]_x86.s")
    print(f"    └── [basename]_arm.s")

# 生成配对清单
def generate_pair_list():
    """生成配对的清单文件"""
    
    x86_dir = Path("x86_assembly")
    arm_dir = Path("arm_assembly")
    
    x86_suffix = "_x86_64_O0.s"
    arm_suffix = "_arm64_O0.s"
    
    # 收集文件
    x86_files = {}
    for file in x86_dir.glob(f"*{x86_suffix}"):
        filename = file.name
        if filename.endswith(x86_suffix):
            base_name = filename[:-len(x86_suffix)]
            x86_files[base_name] = file
    
    arm_files = {}
    for file in arm_dir.glob(f"*{arm_suffix}"):
        filename = file.name
        if filename.endswith(arm_suffix):
            base_name = filename[:-len(arm_suffix)]
            arm_files[base_name] = file
    
    # 找出匹配的文件
    common_keys = set(x86_files.keys()) & set(arm_files.keys())
    
    if not common_keys:
        print("没有找到匹配的文件对！")
        return
    
    # 生成清单
    with open("pair_list.txt", "w", encoding="utf-8") as f:
        f.write("匹配的文件对清单:\n")
        f.write("=" * 50 + "\n")
        f.write(f"总对数: {len(common_keys)}\n")
        f.write(f"生成时间: {os.path.basename(os.getcwd())}\n\n")
        
        f.write("编号, 基础名称, x86文件, ARM文件\n")
        f.write("-" * 80 + "\n")
        
        for i, key in enumerate(sorted(common_keys), 1):
            f.write(f"{i:4d}, {key}, {x86_files[key].name}, {arm_files[key].name}\n")
    
    print(f"已生成配对清单: pair_list.txt")
    print(f"包含 {len(common_keys)} 对匹配文件")

if __name__ == "__main__":
    print("选择提取模式:")
    print("1. 基本模式 (默认)")
    print("2. 平面结构模式")
    print("3. 灵活模式 (多优化级别)")
    print("4. 只生成清单")
    
    choice = input("请输入选择 (1-4, 默认1): ").strip()
    
    if choice == "2":
        extract_matching_pairs_flat()
    elif choice == "3":
        extract_matching_pairs_flexible()
    elif choice == "4":
        generate_pair_list()
    else:
        extract_matching_pairs()