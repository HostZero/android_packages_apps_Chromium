.class public Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;
.super Ljava/lang/Object;
.source "ContextualSearchIconSpriteControl.java"

# interfaces
.implements Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;


# instance fields
.field private mCompletionPercentage:F

.field private mIsAnimationDisabledByTrial:Z

.field private mIsVisible:Z

.field private mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

.field private mShouldAnimateAppearance:Z


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    .line 57
    return-void
.end method


# virtual methods
.method public animateApperance()V
    .locals 10

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mIsVisible:Z

    .line 119
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mIsAnimationDisabledByTrial:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mPanel:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;

    sget-object v3, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;->APPEARANCE:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    const/4 v4, 0x0

    const-wide/16 v6, 0x15e

    const-wide/16 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchPanel;->addToAnimation(Lorg/chromium/chrome/browser/compositor/layouts/ChromeAnimation$Animatable;Ljava/lang/Enum;FFJJ)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iput v5, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mCompletionPercentage:F

    goto :goto_0
.end method

.method public getCompletionPercentage()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mCompletionPercentage:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mIsVisible:Z

    return v0
.end method

.method public bridge synthetic onPropertyAnimationFinished(Ljava/lang/Enum;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;)V

    return-void
.end method

.method public onPropertyAnimationFinished(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public bridge synthetic setProperty(Ljava/lang/Enum;F)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;F)V

    return-void
.end method

.method public setProperty(Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;F)V
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;->APPEARANCE:Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl$AnimationType;

    if-ne p1, v0, :cond_0

    .line 130
    iput p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mCompletionPercentage:F

    .line 132
    :cond_0
    return-void
.end method

.method public setShouldAnimateAppearance(ZZ)V
    .locals 1

    .prologue
    .line 96
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mIsVisible:Z

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mCompletionPercentage:F

    .line 104
    :goto_0
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mShouldAnimateAppearance:Z

    .line 105
    iput-boolean p2, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mIsAnimationDisabledByTrial:Z

    .line 106
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mIsVisible:Z

    .line 102
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mCompletionPercentage:F

    goto :goto_0
.end method

.method public shouldAnimateAppearance()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/compositor/bottombar/contextualsearch/ContextualSearchIconSpriteControl;->mShouldAnimateAppearance:Z

    return v0
.end method
