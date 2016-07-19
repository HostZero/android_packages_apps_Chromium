.class final Landroid/support/v7/internal/app/k;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v4/view/be;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/app/h;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/app/h;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v7/internal/app/k;->a:Landroid/support/v7/internal/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/support/v7/internal/app/k;->a:Landroid/support/v7/internal/app/h;

    invoke-static {v0}, Landroid/support/v7/internal/app/h;->c(Landroid/support/v7/internal/app/h;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 167
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 168
    return-void
.end method
