.class public Lorg/chromium/chrome/browser/InsetObserverView;
.super Landroid/view/View;
.source "InsetObserverView.java"


# instance fields
.field protected final mWindowInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/InsetObserverView;->setVisibility(I)V

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/InsetObserverView;->mWindowInsets:Landroid/graphics/Rect;

    .line 43
    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/chrome/browser/InsetObserverView;
    .locals 2

    .prologue
    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 30
    new-instance v0, Lorg/chromium/chrome/browser/InsetObserverView;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/InsetObserverView;-><init>(Landroid/content/Context;)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/InsetObserverView$InsetObserverViewApi21;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/InsetObserverView$InsetObserverViewApi21;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 5

    .prologue
    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/InsetObserverView;->mWindowInsets:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSystemWindowInsetsBottom()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/InsetObserverView;->mWindowInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method
