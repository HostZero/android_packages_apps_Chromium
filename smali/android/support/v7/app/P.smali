.class final Landroid/support/v7/app/P;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/T;


# instance fields
.field private synthetic a:Landroid/support/v7/app/N;


# direct methods
.method constructor <init>(Landroid/support/v7/app/N;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Landroid/support/v7/app/P;->a:Landroid/support/v7/app/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/support/v4/view/bf;)Landroid/support/v4/view/bf;
    .locals 4

    .prologue
    .line 395
    invoke-virtual {p2}, Landroid/support/v4/view/bf;->b()I

    move-result v0

    .line 396
    iget-object v1, p0, Landroid/support/v7/app/P;->a:Landroid/support/v7/app/N;

    invoke-static {v1, v0}, Landroid/support/v7/app/N;->c(Landroid/support/v7/app/N;I)I

    move-result v1

    .line 398
    if-eq v0, v1, :cond_0

    .line 399
    invoke-virtual {p2}, Landroid/support/v4/view/bf;->a()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v4/view/bf;->c()I

    move-result v2

    invoke-virtual {p2}, Landroid/support/v4/view/bf;->d()I

    move-result v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/bf;->a(IIII)Landroid/support/v4/view/bf;

    move-result-object p2

    .line 407
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->a(Landroid/view/View;Landroid/support/v4/view/bf;)Landroid/support/v4/view/bf;

    move-result-object v0

    return-object v0
.end method
