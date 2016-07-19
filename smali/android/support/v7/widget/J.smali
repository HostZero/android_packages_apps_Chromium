.class final Landroid/support/v7/widget/J;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Landroid/support/v7/widget/I;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/I;Landroid/support/v7/widget/AppCompatSpinner;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Landroid/support/v7/widget/J;->a:Landroid/support/v7/widget/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 698
    iget-object v0, p0, Landroid/support/v7/widget/J;->a:Landroid/support/v7/widget/I;

    iget-object v0, v0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 699
    iget-object v0, p0, Landroid/support/v7/widget/J;->a:Landroid/support/v7/widget/I;

    iget-object v0, v0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/support/v7/widget/J;->a:Landroid/support/v7/widget/I;

    iget-object v0, v0, Landroid/support/v7/widget/I;->a:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v1, p0, Landroid/support/v7/widget/J;->a:Landroid/support/v7/widget/I;

    invoke-static {v1}, Landroid/support/v7/widget/I;->a(Landroid/support/v7/widget/I;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 703
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/J;->a:Landroid/support/v7/widget/I;

    invoke-virtual {v0}, Landroid/support/v7/widget/I;->i()V

    .line 704
    return-void
.end method
