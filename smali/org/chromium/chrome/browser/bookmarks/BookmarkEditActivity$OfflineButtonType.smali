.class final enum Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;
.super Ljava/lang/Enum;
.source "BookmarkEditActivity.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

.field public static final enum NONE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

.field public static final enum REMOVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

.field public static final enum SAVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

.field public static final enum VISIT:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->NONE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 49
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    const-string/jumbo v1, "SAVE"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->SAVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 50
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    const-string/jumbo v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->REMOVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    const-string/jumbo v1, "VISIT"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->VISIT:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->NONE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->SAVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->REMOVE:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->VISIT:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->$VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->$VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$OfflineButtonType;

    return-object v0
.end method
