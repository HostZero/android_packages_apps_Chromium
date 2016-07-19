.class final enum Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;
.super Ljava/lang/Enum;
.source "ToolbarPhone.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

.field public static final enum BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

.field public static final enum INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

.field public static final enum NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

.field public static final enum NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

.field public static final enum TAB_SWITCHER_INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

.field public static final enum TAB_SWITCHER_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    const-string/jumbo v1, "TAB_SWITCHER_INCOGNITO"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->TAB_SWITCHER_INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 207
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    const-string/jumbo v1, "TAB_SWITCHER_NORMAL"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->TAB_SWITCHER_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 208
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 209
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    const-string/jumbo v1, "INCOGNITO"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 210
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    const-string/jumbo v1, "BRAND_COLOR"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 211
    new-instance v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    const-string/jumbo v1, "NEW_TAB_NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    .line 205
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->TAB_SWITCHER_INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->TAB_SWITCHER_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->INCOGNITO:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->BRAND_COLOR:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->NEW_TAB_NORMAL:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->$VALUES:[Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;
    .locals 1

    .prologue
    .line 205
    const-class v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->$VALUES:[Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$VisualState;

    return-object v0
.end method
