.class final enum Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;
.super Ljava/lang/Enum;
.source "BookmarkSearchView.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

.field public static final enum EMPTY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

.field public static final enum HISTORY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

.field public static final enum RESULT:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    const-string/jumbo v1, "HISTORY"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->HISTORY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    const-string/jumbo v1, "RESULT"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->RESULT:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    const-string/jumbo v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->EMPTY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->HISTORY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->RESULT:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->EMPTY:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->$VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->$VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$UIState;

    return-object v0
.end method
