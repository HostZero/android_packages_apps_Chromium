.class public Lorg/chromium/chrome/browser/ntp/NewTabScrollView;
.super Landroid/widget/ScrollView;
.source "NewTabScrollView.java"


# instance fields
.field private mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mNewTabPageLayout:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

.field private mOnScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/ntp/NewTabScrollView$1;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView$1;-><init>(Lorg/chromium/chrome/browser/ntp/NewTabScrollView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 64
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 170
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 171
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, v3}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 173
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getBottomFadingEdgeStrength()F

    move-result v5

    .line 174
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    int-to-float v4, v0

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 176
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/FadingShadow;->drawShadow(Landroid/view/View;Landroid/graphics/Canvas;IFF)V

    .line 179
    :cond_0
    return-void
.end method

.method public enableBottomShadow(I)V
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lorg/chromium/chrome/browser/widget/FadingShadow;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/widget/FadingShadow;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mFadingShadow:Lorg/chromium/chrome/browser/widget/FadingShadow;

    .line 75
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->ntp_shadow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->setFadingEdgeLength(I)V

    .line 76
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 157
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 155
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 164
    const/high16 v0, 0x2000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 165
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    instance-of v1, v0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mNewTabPageLayout:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    .line 84
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mNewTabPageLayout:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mNewTabPageLayout:Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabPageLayout;->setParentScrollViewportHeight(I)V

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 93
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mOnScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mOnScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;->onScrollChanged(IIII)V

    .line 136
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "pointerIndex out of range"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const-string/jumbo v0, "NewTabScrollView"

    const-string/jumbo v1, "Ignoring pointerIndex out of range exception."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    throw v0
.end method

.method public setOnScrollListener(Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->mOnScrollListener:Lorg/chromium/chrome/browser/ntp/NewTabScrollView$OnScrollListener;

    .line 130
    return-void
.end method
