.class final Landroid/support/v7/widget/ar;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"


# instance fields
.field private synthetic a:Landroid/support/v7/widget/aj;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/aj;)V
    .locals 0

    .prologue
    .line 1769
    iput-object p1, p0, Landroid/support/v7/widget/ar;->a:Landroid/support/v7/widget/aj;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/aj;B)V
    .locals 0

    .prologue
    .line 1769
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ar;-><init>(Landroid/support/v7/widget/aj;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->c()V

    .line 1776
    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Landroid/support/v7/widget/ar;->a:Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->i()V

    .line 1781
    return-void
.end method
