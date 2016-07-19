.class public final enum Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;
.super Ljava/lang/Enum;
.source "ChromeBrowserProvider.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

.field public static final enum BOOKMARK_BAR:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

.field public static final enum FOLDER:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

.field public static final enum MOBILE:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

.field public static final enum OTHER_NODE:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

.field public static final enum URL:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 669
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    const-string/jumbo v1, "URL"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->URL:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    .line 670
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    const-string/jumbo v1, "FOLDER"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->FOLDER:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    .line 671
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    const-string/jumbo v1, "BOOKMARK_BAR"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->BOOKMARK_BAR:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    .line 672
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    const-string/jumbo v1, "OTHER_NODE"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->OTHER_NODE:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    .line 673
    new-instance v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    const-string/jumbo v1, "MOBILE"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->MOBILE:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    .line 668
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    sget-object v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->URL:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->FOLDER:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->BOOKMARK_BAR:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->OTHER_NODE:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->MOBILE:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->$VALUES:[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;
    .locals 1

    .prologue
    .line 668
    const-class v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;
    .locals 1

    .prologue
    .line 668
    sget-object v0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->$VALUES:[Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$Type;

    return-object v0
.end method
