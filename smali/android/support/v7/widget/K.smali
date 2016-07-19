.class final Landroid/support/v7/widget/K;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/I;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/I;)V
    .locals 0

    .prologue
    .line 783
    iput-object p1, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .prologue
    .line 786
    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/I;

    iget-object v1, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/I;

    iget-object v1, v1, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-static {v0, v1}, Landroid/support/v7/widget/I;->a(Landroid/support/v7/widget/I;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/I;

    invoke-virtual {v0}, Landroid/support/v7/widget/I;->i()V

    .line 795
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/I;

    invoke-virtual {v0}, Landroid/support/v7/widget/I;->b()V

    .line 793
    iget-object v0, p0, Landroid/support/v7/widget/K;->a:Landroid/support/v7/widget/I;

    invoke-static {v0}, Landroid/support/v7/widget/I;->b(Landroid/support/v7/widget/I;)V

    goto :goto_0
.end method
