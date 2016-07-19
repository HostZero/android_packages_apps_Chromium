.class final Landroid/support/v7/widget/L;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private synthetic b:Landroid/support/v7/widget/I;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/I;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Landroid/support/v7/widget/L;->b:Landroid/support/v7/widget/I;

    iput-object p2, p0, Landroid/support/v7/widget/L;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Landroid/support/v7/widget/L;->b:Landroid/support/v7/widget/I;

    iget-object v0, v0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_0

    .line 803
    iget-object v1, p0, Landroid/support/v7/widget/L;->a:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 805
    :cond_0
    return-void
.end method
