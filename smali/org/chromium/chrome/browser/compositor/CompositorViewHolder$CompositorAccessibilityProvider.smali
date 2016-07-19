.class Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;
.super Landroid/support/v4/widget/E;
.source "CompositorViewHolder.java"


# instance fields
.field private final mDpToPx:F

.field private final mPixelRect:Landroid/graphics/Rect;

.field private final mPlaceHolderRect:Landroid/graphics/Rect;

.field private final mTouchTarget:Landroid/graphics/RectF;

.field mVirtualViews:Ljava/util/List;

.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1022
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    .line 1023
    invoke-direct {p0, p2}, Landroid/support/v4/widget/E;-><init>(Landroid/view/View;)V

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    .line 1017
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPlaceHolderRect:Landroid/graphics/Rect;

    .line 1019
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mTouchTarget:Landroid/graphics/RectF;

    .line 1020
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    .line 1024
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mDpToPx:F

    .line 1025
    return-void
.end method

.method private rectToPx(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 1094
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1095
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mDpToPx:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1096
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mDpToPx:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1097
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mDpToPx:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1098
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mDpToPx:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1102
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_0

    .line 1103
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1105
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_1

    .line 1106
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1108
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPixelRect:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 5

    .prologue
    const/high16 v2, -0x80000000

    .line 1029
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    if-nez v0, :cond_1

    move v1, v2

    .line 1035
    :cond_0
    :goto_0
    return v1

    .line 1030
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1031
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;

    iget v3, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mDpToPx:F

    div-float v3, p1, v3

    iget v4, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mDpToPx:F

    div-float v4, p2, v4

    invoke-interface {v0, v3, v4}, Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;->checkClicked(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1030
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 1035
    goto :goto_0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 1040
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    # getter for: Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->access$500(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1046
    :cond_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1042
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->this$0:Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    # getter for: Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->mLayoutManager:Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;->access$500(Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;)Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/LayoutManager;->getVirtualViews(Ljava/util/List;)V

    .line 1043
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1044
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 1051
    packed-switch p2, :pswitch_data_0

    .line 1056
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1053
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1051
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 1064
    :cond_0
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1071
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;

    .line 1069
    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1070
    const-class v0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/support/v4/view/a/h;)V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 1079
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mPlaceHolderRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->b(Landroid/graphics/Rect;)V

    .line 1080
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/CharSequence;)V

    .line 1091
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mVirtualViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;

    .line 1084
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mTouchTarget:Landroid/graphics/RectF;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;->getTouchTarget(Landroid/graphics/RectF;)V

    .line 1086
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->mTouchTarget:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/compositor/CompositorViewHolder$CompositorAccessibilityProvider;->rectToPx(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/h;->b(Landroid/graphics/Rect;)V

    .line 1087
    invoke-interface {v0}, Lorg/chromium/chrome/browser/compositor/layouts/components/VirtualView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->c(Ljava/lang/CharSequence;)V

    .line 1088
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(I)V

    .line 1089
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(I)V

    .line 1090
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/h;->a(I)V

    goto :goto_0
.end method
