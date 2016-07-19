.class final Landroid/support/v7/internal/widget/q;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field private synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 591
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 592
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;

    .line 3789
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/k;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 593
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/k;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 594
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;

    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/k;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_0

    .line 596
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 597
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 600
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 601
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 603
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final onDismiss()V
    .locals 1

    .prologue
    .line 623
    .line 5630
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5631
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 627
    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/p;

    .line 560
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/p;->getItemViewType(I)I

    move-result v0

    .line 561
    packed-switch v0, :pswitch_data_0

    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 563
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 566
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 567
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b(Landroid/support/v7/internal/widget/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    if-lez p3, :cond_0

    .line 570
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/widget/k;->c(I)V

    goto :goto_0

    .line 575
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    :goto_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/widget/k;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_0

    .line 578
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 575
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 610
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->c(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 611
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/p;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 612
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 613
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 618
    :cond_0
    return v2

    .line 616
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
