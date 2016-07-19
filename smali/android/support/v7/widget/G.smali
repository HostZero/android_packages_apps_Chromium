.class final Landroid/support/v7/widget/G;
.super Landroid/support/v7/widget/an;
.source "AppCompatSpinner.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/I;

.field private synthetic b:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/I;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Landroid/support/v7/widget/G;->b:Landroid/support/v7/widget/AppCompatSpinner;

    iput-object p3, p0, Landroid/support/v7/widget/G;->a:Landroid/support/v7/widget/I;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/an;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/aj;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v7/widget/G;->a:Landroid/support/v7/widget/I;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/G;->b:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/I;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/I;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/G;->b:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0}, Landroid/support/v7/widget/AppCompatSpinner;->a(Landroid/support/v7/widget/AppCompatSpinner;)Landroid/support/v7/widget/I;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/I;->c()V

    .line 265
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
