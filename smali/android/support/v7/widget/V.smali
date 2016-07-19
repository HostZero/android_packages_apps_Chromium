.class final Landroid/support/v7/widget/V;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Landroid/support/v7/widget/S;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/S;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Landroid/support/v7/widget/V;->b:Landroid/support/v7/widget/S;

    iput-object p2, p0, Landroid/support/v7/widget/V;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Landroid/support/v7/widget/V;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aY;

    .line 166
    iget-object v2, p0, Landroid/support/v7/widget/V;->b:Landroid/support/v7/widget/S;

    invoke-static {v2, v0}, Landroid/support/v7/widget/S;->a(Landroid/support/v7/widget/S;Landroid/support/v7/widget/aY;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/V;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/V;->b:Landroid/support/v7/widget/S;

    invoke-static {v0}, Landroid/support/v7/widget/S;->c(Landroid/support/v7/widget/S;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/V;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method
