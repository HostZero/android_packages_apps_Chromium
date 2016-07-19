.class final enum Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;
.super Ljava/lang/Enum;
.source "BookmarkFilter.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

.field public static final enum OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    const-string/jumbo v1, "OFFLINE_PAGES"

    const-string/jumbo v2, "OFFLINE_PAGES"

    invoke-direct {v0, v1, v3, v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    .line 10
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    sget-object v1, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->OFFLINE_PAGES:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    aput-object v1, v0, v3

    sput-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->$VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->value:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->$VALUES:[Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    return-object v0
.end method
