//根据传入的权限等级获取颜色配置
export const getStatusColor = (tag: number): string | undefined => {
    switch(tag) {
        case 1: return "color: #c93f38";
        case 2: return "color: #e56e24";
        case 3: return "color: #eec400";
        case 4: return "color: #a59344";
        case 5: return "color: #76b583";
        case 6: return "color: #008a60";
        case 7: return "color: #65a7dd";
        case 8: return "color: #00035b";
        case 9: return "color: #7249d6";
        case 10: return "color: #9c52f2";
        default: return undefined;
    }
};

//根据传入的权限等级获取颜色
export const getStatusColorCode = (tag: number): string | undefined => {
    switch(tag) {
        case 1: return "#c93f38";
        case 2: return "#e56e24";
        case 3: return "#eec400";
        case 4: return "#a59344";
        case 5: return "#76b583";
        case 6: return "#008a60";
        case 7: return "#65a7dd";
        case 8: return "#00035b";
        case 9: return "#7249d6";
        case 10: return "#9c52f2";
        default: return undefined;
    }
};