.class final Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UpdateMenuItemHelper.java"


# instance fields
.field final synthetic val$menuBadge:Landroid/view/View;

.field final synthetic val$menuButton:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;->val$menuBadge:Landroid/view/View;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;->val$menuButton:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;->val$menuButton:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 319
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;->val$menuBadge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lorg/chromium/chrome/browser/omaha/UpdateMenuItemHelper$3;->val$menuBadge:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    return-void
.end method
