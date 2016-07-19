.class final Landroid/support/v7/app/an;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/aj;


# direct methods
.method constructor <init>(Landroid/support/v7/app/aj;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->e(Landroid/support/v7/app/aj;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 491
    iget-object v0, p0, Landroid/support/v7/app/an;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->g(Landroid/support/v7/app/aj;)V

    .line 492
    return-void
.end method
