.class Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$4;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkSearchView.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;Landroid/content/Context;IILjava/util/List;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    const/high16 v1, 0x42900000    # 72.0f

    iget-object v2, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$4;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 182
    return-object v0
.end method
