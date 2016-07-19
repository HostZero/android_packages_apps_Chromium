.class Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;
.super Ljava/lang/Object;
.source "NewTabPageView.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field private mIsInitialLoad:Z

.field private mItem:Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

.field private mItemView:Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;

.field final synthetic this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;Lorg/chromium/chrome/browser/ntp/MostVisitedItem;Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;Z)V
    .locals 0

    .prologue
    .line 956
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mItem:Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    .line 958
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mItemView:Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;

    .line 959
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mIsInitialLoad:Z

    .line 960
    return-void
.end method


# virtual methods
.method public onLargeIconAvailable(Landroid/graphics/Bitmap;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 964
    if-nez p1, :cond_2

    .line 965
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->access$1200(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;)Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->setBackgroundColor(I)V

    .line 966
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->access$1200(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;)Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mItem:Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 967
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mItemView:Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    iget-object v3, v3, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 968
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mItem:Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    const v0, -0x878788

    if-ne p2, v0, :cond_1

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->setTileType(I)V

    .line 982
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # setter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->mSnapshotMostVisitedChanged:Z
    invoke-static {v0, v4}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$1002(Lorg/chromium/chrome/browser/ntp/NewTabPageView;Z)Z

    .line 983
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mIsInitialLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    # invokes: Lorg/chromium/chrome/browser/ntp/NewTabPageView;->loadTaskCompleted()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->access$1400(Lorg/chromium/chrome/browser/ntp/NewTabPageView;)V

    .line 984
    :cond_0
    return-void

    .line 968
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 971
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/b/a/b;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/b/a/p;

    move-result-object v0

    .line 973
    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    iget-object v2, v2, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->this$0:Lorg/chromium/chrome/browser/ntp/NewTabPageView;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->this$1:Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;

    # getter for: Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->mDesiredIconSize:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;->access$1300(Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 976
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/b/a/p;->a(F)V

    .line 977
    invoke-virtual {v0, v4}, Landroid/support/v4/b/a/p;->a(Z)V

    .line 978
    invoke-virtual {v0, v4}, Landroid/support/v4/b/a/p;->setFilterBitmap(Z)V

    .line 979
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mItemView:Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/ntp/MostVisitedItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 980
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabPageView$MostVisitedDesign$LargeIconCallbackImpl;->mItem:Lorg/chromium/chrome/browser/ntp/MostVisitedItem;

    invoke-virtual {v0, v4}, Lorg/chromium/chrome/browser/ntp/MostVisitedItem;->setTileType(I)V

    goto :goto_1
.end method
