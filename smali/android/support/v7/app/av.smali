.class final Landroid/support/v7/app/av;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v7/app/au;


# direct methods
.method constructor <init>(Landroid/support/v7/app/au;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Landroid/support/v7/app/av;->a:Landroid/support/v7/app/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v7/app/av;->a:Landroid/support/v7/app/au;

    iget-object v0, v0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->p(Landroid/support/v7/app/aj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Landroid/support/v7/app/av;->a:Landroid/support/v7/app/au;

    iget-object v0, v0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/aj;->c(Landroid/support/v7/app/aj;Z)Z

    .line 853
    iget-object v0, p0, Landroid/support/v7/app/av;->a:Landroid/support/v7/app/au;

    iget-object v0, v0, Landroid/support/v7/app/au;->a:Landroid/support/v7/app/aj;

    invoke-static {v0}, Landroid/support/v7/app/aj;->j(Landroid/support/v7/app/aj;)V

    .line 855
    :cond_0
    return-void
.end method
