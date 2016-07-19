.class Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;
.super Landroid/support/v7/widget/aI;
.source "BookmarkRecyclerView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

.field final synthetic val$adapter:Landroid/support/v7/widget/aG;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;Landroid/support/v7/widget/aG;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    iput-object p2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;->val$adapter:Landroid/support/v7/widget/aG;

    invoke-direct {p0}, Landroid/support/v7/widget/aI;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v7/widget/aI;->onChanged()V

    .line 71
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;->val$adapter:Landroid/support/v7/widget/aG;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->updateEmptyViewVisibility(Landroid/support/v7/widget/aG;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;Landroid/support/v7/widget/aG;)V

    .line 72
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/aI;->onItemRangeRemoved(II)V

    .line 83
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$1;->val$adapter:Landroid/support/v7/widget/aG;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->updateEmptyViewVisibility(Landroid/support/v7/widget/aG;)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView;Landroid/support/v7/widget/aG;)V

    .line 84
    return-void
.end method
