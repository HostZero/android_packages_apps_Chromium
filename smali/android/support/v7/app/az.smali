.class final Landroid/support/v7/app/az;
.super Ljava/lang/Object;
.source "MediaRouteExpandCollapseButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->a(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->a(Landroid/support/v7/app/MediaRouteExpandCollapseButton;Z)Z

    .line 71
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->a(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->b(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->b(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 74
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->c(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    :goto_1
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->f(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->f(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 83
    :cond_0
    return-void

    .line 70
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->d(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->d(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 78
    iget-object v0, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iget-object v1, p0, Landroid/support/v7/app/az;->a:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->e(Landroid/support/v7/app/MediaRouteExpandCollapseButton;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
