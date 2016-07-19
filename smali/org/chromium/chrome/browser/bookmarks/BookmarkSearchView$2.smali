.class Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$2;
.super Ljava/lang/Object;
.source "BookmarkSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->onBackPressed()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$200(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    .line 143
    return-void
.end method
