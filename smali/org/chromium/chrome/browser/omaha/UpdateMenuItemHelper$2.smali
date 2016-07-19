.class final Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpdateMenuItemHelper.java"


# instance fields
.field final synthetic val$menuBadge:Landroid/view/View;

.field final synthetic val$menuButton:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;->val$menuButton:Landroid/view/View;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;->val$menuBadge:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 278
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;->val$menuBadge:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 279
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;->val$menuBadge:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 280
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;->val$menuButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 281
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$2;->val$menuButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 273
    return-void
.end method
