.class Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$VerticalSpaceItemDecoration;
.super Landroid/support/v7/widget/aM;
.source "BookmarkRecyclerView.java"


# instance fields
.field private final mSpacing:I


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/aW;)V
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkRecyclerView$VerticalSpaceItemDecoration;->mSpacing:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 42
    return-void
.end method
