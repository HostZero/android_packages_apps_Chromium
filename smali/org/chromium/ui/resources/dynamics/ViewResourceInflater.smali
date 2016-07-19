.class public Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;
.super Ljava/lang/Object;
.source "ViewResourceInflater.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mIsAttached:Z

.field private mIsInvalidated:Z

.field private mLayoutId:I

.field private mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

.field private mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

.field private mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

.field private mView:Landroid/view/View;

.field private mViewId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IILandroid/content/Context;Landroid/view/ViewGroup;Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mLayoutId:I

    .line 102
    iput p2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    .line 103
    iput-object p3, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContext:Landroid/content/Context;

    .line 104
    iput-object p4, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    .line 105
    iput-object p5, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    .line 106
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->onCaptureEnd()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->onDraw()V

    return-void
.end method

.method private attachView()V
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-nez v0, :cond_1

    .line 256
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    .line 260
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;-><init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$1;)V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    .line 264
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 267
    :cond_1
    return-void
.end method

.method private detachView()V
    .locals 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mOnDrawListener:Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterOnDrawListener;

    .line 279
    :cond_0
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 280
    :cond_1
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    .line 283
    :cond_2
    return-void
.end method

.method private getUnspecifiedMeasureSpec()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private invalidateResource()V
    .locals 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    if-eqz v0, :cond_0

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    .line 333
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;->invalidate(Landroid/graphics/Rect;)V

    .line 335
    :cond_0
    return-void
.end method

.method private layout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 290
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 292
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getWidthMeasureSpec()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getHeightMeasureSpec()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 293
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 294
    return-void
.end method

.method private onCaptureEnd()V
    .locals 1

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->shouldDetachViewAfterCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->detachView()V

    .line 358
    :cond_0
    return-void
.end method

.method private onDraw()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->invalidateResource()V

    .line 375
    return-void
.end method

.method private registerResource()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;

    iget-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater$ViewInflaterAdapter;-><init>(Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;Landroid/view/View;)V

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    invoke-virtual {v0, v1, v2}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->registerResource(ILorg/chromium/ui/resources/dynamics/DynamicResource;)V

    .line 314
    :cond_1
    return-void
.end method

.method private unregisterResource()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    invoke-virtual {v0, v1}, Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;->unregisterResource(I)V

    .line 324
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceAdapter:Lorg/chromium/ui/resources/dynamics/ViewResourceAdapter;

    .line 325
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->unregisterResource()V

    .line 165
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->detachView()V

    .line 166
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    .line 168
    iput v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mLayoutId:I

    .line 169
    iput v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    .line 171
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContext:Landroid/content/Context;

    .line 172
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    .line 173
    iput-object v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mResourceLoader:Lorg/chromium/ui/resources/dynamics/DynamicResourceLoader;

    goto :goto_0
.end method

.method protected getHeightMeasureSpec()I
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getUnspecifiedMeasureSpec()I

    move-result v0

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 191
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 181
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewId()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    return v0
.end method

.method protected getWidthMeasureSpec()I
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->getUnspecifiedMeasureSpec()I

    move-result v0

    return v0
.end method

.method public inflate()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mLayoutId:I

    iget-object v2, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    .line 118
    sget-boolean v0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mViewId:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->onFinishInflate()V

    .line 124
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->registerResource()V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->inflate()V

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsInvalidated:Z

    .line 140
    iget-boolean v0, p0, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->mIsAttached:Z

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->shouldAttachView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->attachView()V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->layout()V

    .line 152
    invoke-direct {p0}, Lorg/chromium/ui/resources/dynamics/ViewResourceInflater;->invalidateResource()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method protected shouldAttachView()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldDetachViewAfterCapturing()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method
