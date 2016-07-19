.class Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;
.super Ljava/lang/Object;
.source "ValidationMessageBubble.java"


# instance fields
.field private mPopup:Landroid/widget/PopupWindow;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/chromium/components/web_contents_delegate_android/R$layout;->validation_message_bubble:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    .line 57
    invoke-static {v0, p3, p4}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->updateTextViews(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->measure(Lorg/chromium/content/browser/RenderCoordinates;)V

    .line 59
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-direct {p0}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->getAnchorOffset()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->adjustWindowPosition(Lorg/chromium/content/browser/ContentViewCore;II)Landroid/graphics/Point;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 63
    return-void
.end method

.method private adjustWindowPosition(Lorg/chromium/content/browser/ContentViewCore;II)Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 145
    invoke-virtual {p1}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result v1

    .line 147
    invoke-static {p1}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->getWebViewOffsetYPixInScreen(Lorg/chromium/content/browser/ContentViewCore;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v0

    add-int/2addr v0, v2

    .line 149
    iget-object v2, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 150
    iget-object v3, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 151
    if-gez p2, :cond_2

    .line 152
    const/4 p2, 0x0

    .line 156
    :cond_0
    :goto_0
    add-int v1, p3, v3

    if-le v1, v0, :cond_1

    .line 157
    sub-int p3, v0, v3

    .line 159
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 153
    :cond_2
    add-int v4, p2, v2

    if-le v4, v1, :cond_0

    .line 154
    sub-int p2, v1, v2

    goto :goto_0
.end method

.method private close()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method private static createAndShow(Lorg/chromium/content/browser/ContentViewCore;IIIILjava/lang/String;Ljava/lang/String;)Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;
    .locals 2

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->makePixRectInScreen(Lorg/chromium/content/browser/ContentViewCore;IIII)Landroid/graphics/RectF;

    move-result-object v0

    .line 49
    new-instance v1, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;

    invoke-direct {v1, p0, v0, p5, p6}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;-><init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getAnchorOffset()F
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 136
    sget v2, Lorg/chromium/components/web_contents_delegate_android/R$id;->arrow_image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 137
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v1, 0x3

    div-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    div-int/lit8 v0, v1, 0x4

    div-int/lit8 v1, v2, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method private static getWebViewOffsetYPixInScreen(Lorg/chromium/content/browser/ContentViewCore;)F
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 105
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getContainerView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 106
    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method private static makePixRectInScreen(Lorg/chromium/content/browser/ContentViewCore;IIII)Landroid/graphics/RectF;
    .locals 7

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentViewCore;->getRenderCoordinates()Lorg/chromium/content/browser/RenderCoordinates;

    move-result-object v0

    .line 95
    invoke-static {p0}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->getWebViewOffsetYPixInScreen(Lorg/chromium/content/browser/ContentViewCore;)F

    move-result v1

    .line 96
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p1

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v3

    int-to-float v4, p2

    invoke-virtual {v0, v4}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v4

    add-float/2addr v4, v1

    add-int v5, p1, p3

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v5

    add-int v6, p2, p4

    int-to-float v6, v6

    invoke-virtual {v0, v6}, Lorg/chromium/content/browser/RenderCoordinates;->fromLocalCssToPix(F)F

    move-result v0

    add-float/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private measure(Lorg/chromium/content/browser/RenderCoordinates;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    const/4 v2, -0x2

    .line 120
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 121
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 122
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportWidthPixInt()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1}, Lorg/chromium/content/browser/RenderCoordinates;->getLastFrameViewportHeightPixInt()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 131
    return-void
.end method

.method private setPositionRelativeToAnchor(Lorg/chromium/content/browser/ContentViewCore;IIII)V
    .locals 5

    .prologue
    .line 85
    invoke-static {p1, p2, p3, p4, p5}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->makePixRectInScreen(Lorg/chromium/content/browser/ContentViewCore;IIII)Landroid/graphics/RectF;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-direct {p0}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->getAnchorOffset()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {p0, p1, v1, v0}, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->adjustWindowPosition(Lorg/chromium/content/browser/ContentViewCore;II)Landroid/graphics/Point;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/components/web_contents_delegate_android/ValidationMessageBubble;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 90
    return-void
.end method

.method private static updateTextViews(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    sget v0, Lorg/chromium/components/web_contents_delegate_android/R$id;->main_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v0, Lorg/chromium/components/web_contents_delegate_android/R$id;->sub_text:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
