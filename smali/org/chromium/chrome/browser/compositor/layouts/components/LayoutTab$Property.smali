.class public final enum Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;
.super Ljava/lang/Enum;
.source "LayoutTab.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum BORDER_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum DECORATION_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum MAX_CONTENT_HEIGHT:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum MAX_CONTENT_WIDTH:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum SATURATION:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum SIDE_BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum STATIC_TO_VIEW_BLEND:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum TILTX:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum TILTY:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum TOOLBAR_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum TOOLBAR_Y_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

.field public static final enum Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "BORDER_ALPHA"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 28
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "BORDER_SCALE"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 29
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "ALPHA"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "SATURATION"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SATURATION:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 31
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "STATIC_TO_VIEW_BLEND"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->STATIC_TO_VIEW_BLEND:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 32
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "SCALE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 33
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "TILTX"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TILTX:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 34
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "TILTY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TILTY:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "X"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "Y"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "MAX_CONTENT_WIDTH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->MAX_CONTENT_WIDTH:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "MAX_CONTENT_HEIGHT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->MAX_CONTENT_HEIGHT:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 39
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "TOOLBAR_ALPHA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 40
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "DECORATION_ALPHA"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->DECORATION_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 41
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "TOOLBAR_Y_OFFSET"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_Y_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    const-string/jumbo v1, "SIDE_BORDER_SCALE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SIDE_BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SATURATION:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->STATIC_TO_VIEW_BLEND:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TILTX:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TILTY:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->X:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->Y:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->MAX_CONTENT_WIDTH:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->MAX_CONTENT_HEIGHT:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->DECORATION_ALPHA:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->TOOLBAR_Y_OFFSET:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->SIDE_BORDER_SCALE:Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->$VALUES:[Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/compositor/layouts/components/LayoutTab$Property;

    return-object v0
.end method
