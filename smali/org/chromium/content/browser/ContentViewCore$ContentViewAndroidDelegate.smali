.class Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/ui/base/ViewAndroidDelegate;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAnchorViews:Ljava/util/Map;

.field private mCurrentContainerView:Ljava/lang/ref/WeakReference;

.field private final mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const-class v0, Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/ViewGroup;Lorg/chromium/content/browser/RenderCoordinates;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    .line 187
    iput-object p2, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    .line 188
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    .line 189
    return-void
.end method

.method private doSetAnchorViewPosition(Landroid/view/View;FFFF)V
    .locals 7

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    if-eqz v0, :cond_0

    .line 220
    sget-boolean v1, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 222
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDIPScale()D

    move-result-wide v2

    double-to-float v3, v2

    .line 226
    mul-float v1, p2, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 227
    iget-object v2, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v2}, Lorg/chromium/content/browser/RenderCoordinates;->getContentOffsetYPix()F

    move-result v2

    mul-float v4, p3, v3

    add-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 228
    mul-float v2, p4, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 230
    instance-of v5, v0, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_4

    .line 232
    invoke-static {v0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 233
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    add-float v5, p4, p2

    mul-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v1, v5

    .line 238
    :cond_3
    add-int v5, v2, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, v1

    .line 241
    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    mul-float/2addr v3, p5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    invoke-static {v2, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 244
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 245
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 246
    :cond_4
    instance-of v5, v0, Landroid/widget/AbsoluteLayout;

    if-eqz v5, :cond_5

    .line 252
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v0}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollXPixInt()I

    move-result v0

    add-int/2addr v0, v1

    .line 253
    iget-object v1, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mRenderCoordinates:Lorg/chromium/content/browser/RenderCoordinates;

    invoke-virtual {v1}, Lorg/chromium/content/browser/RenderCoordinates;->getScrollYPixInt()I

    move-result v1

    add-int/2addr v1, v4

    .line 255
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    mul-float/2addr v3, p5

    float-to-int v3, v3

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 258
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 260
    :cond_5
    const-string/jumbo v1, "cr.ContentViewCore"

    const-string/jumbo v2, "Unknown layout %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public acquireAnchorView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 194
    if-nez v0, :cond_0

    move-object v0, v1

    .line 198
    :goto_0
    return-object v0

    .line 195
    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 196
    iget-object v3, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v2

    .line 198
    goto :goto_0
.end method

.method public releaseAnchorView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_0
    return-void
.end method

.method public setAnchorViewPosition(Landroid/view/View;FFFF)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    new-instance v1, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    invoke-direct {v1, p2, p3, p4, p5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;-><init>(FFFF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-direct/range {p0 .. p5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->doSetAnchorViewPosition(Landroid/view/View;FFFF)V

    .line 206
    return-void
.end method

.method updateCurrentContainerView(Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    .line 279
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 280
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mCurrentContainerView:Ljava/lang/ref/WeakReference;

    .line 281
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->mAnchorViews:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;

    .line 284
    if-eqz v6, :cond_1

    .line 285
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    if-eqz v0, :cond_0

    .line 289
    # getter for: Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mX:F
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$000(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v2

    # getter for: Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mY:F
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$100(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v3

    # getter for: Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mWidth:F
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$200(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v4

    # getter for: Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->mHeight:F
    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;->access$300(Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate$Position;)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/ContentViewCore$ContentViewAndroidDelegate;->doSetAnchorViewPosition(Landroid/view/View;FFFF)V

    goto :goto_0

    .line 293
    :cond_2
    return-void
.end method
