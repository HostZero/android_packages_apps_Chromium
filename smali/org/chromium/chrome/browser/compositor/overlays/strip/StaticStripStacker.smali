.class public Lorg/chromium/chrome/browser/compositor/overlays/strip/StaticStripStacker;
.super Ljava/lang/Object;
.source "StaticStripStacker.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/overlays/strip/StripStacker;


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StaticStripStacker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StaticStripStacker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowCloseButton()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public canSlideTitleText()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public createVisualOrdering(I[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 28
    sget-boolean v1, Lorg/chromium/chrome/browser/compositor/overlays/strip/StaticStripStacker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    array-length v1, p2

    array-length v2, p3

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 30
    :cond_0
    array-length v1, p2

    invoke-static {p1, v0, v1}, Lorg/chromium/chrome/browser/util/MathUtils;->clamp(III)I

    move-result v3

    move v1, v0

    .line 33
    :goto_0
    if-ge v0, v3, :cond_1

    .line 34
    add-int/lit8 v2, v1, 0x1

    aget-object v4, p2, v0

    aput-object v4, p3, v1

    .line 33
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    .line 37
    :cond_1
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v3, :cond_2

    .line 38
    add-int/lit8 v2, v1, 0x1

    aget-object v4, p2, v0

    aput-object v4, p3, v1

    .line 37
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_1

    .line 40
    :cond_2
    return-void
.end method

.method public performOcclusionPass(I[Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 44
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_5

    .line 45
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p2, v2

    .line 46
    aget-object v3, p2, v0

    .line 48
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawY()F

    move-result v5

    float-to-int v5, v5

    if-ne v4, v5, :cond_3

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v5

    float-to-int v5, v5

    if-ne v4, v5, :cond_3

    .line 50
    if-gt v0, p1, :cond_2

    .line 51
    invoke-virtual {v2, v6}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setVisible(Z)V

    .line 63
    :cond_0
    :goto_1
    if-ne v0, p1, :cond_1

    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setVisible(Z)V

    .line 44
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    if-le v0, p1, :cond_0

    .line 53
    invoke-virtual {v3, v6}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setVisible(Z)V

    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->getDrawX()F

    move-result v5

    float-to-int v5, v5

    if-eq v4, v5, :cond_0

    .line 56
    if-gt v0, p1, :cond_4

    .line 57
    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setVisible(Z)V

    goto :goto_1

    .line 58
    :cond_4
    if-le v0, p1, :cond_0

    .line 59
    invoke-virtual {v3, v1}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutTab;->setVisible(Z)V

    goto :goto_1

    .line 65
    :cond_5
    return-void
.end method
