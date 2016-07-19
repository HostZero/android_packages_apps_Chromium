.class Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$3;
.super Ljava/lang/Object;
.source "BookmarkRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->showMenu(Landroid/view/View;)V
    invoke-static {v0, p1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkRow;Landroid/view/View;)V

    .line 192
    return-void
.end method
