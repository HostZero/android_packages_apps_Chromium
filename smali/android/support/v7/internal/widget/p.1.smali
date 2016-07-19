.class final Landroid/support/v7/internal/widget/p;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private synthetic e:Landroid/support/v7/internal/widget/ActivityChooserView;


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/p;->b:Z

    return v0
.end method

.method public final getCount()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 689
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/k;->a()I

    move-result v0

    .line 690
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/p;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/k;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 691
    add-int/lit8 v0, v0, -0x1

    .line 693
    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/p;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 694
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/p;->d:Z

    if-eqz v1, :cond_1

    .line 695
    add-int/lit8 v0, v0, 0x1

    .line 697
    :cond_1
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 701
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/p;->getItemViewType(I)I

    move-result v1

    .line 702
    packed-switch v1, :pswitch_data_0

    .line 711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 706
    :pswitch_0
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/p;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/k;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 707
    add-int/lit8 p1, p1, 0x1

    .line 709
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/k;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :pswitch_1
    return-object v0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 716
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/p;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/p;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 676
    const/4 v0, 0x1

    .line 678
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const v6, 0x7f0e0072

    const v2, 0x7f040008

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 720
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/p;->getItemViewType(I)I

    move-result v0

    .line 721
    packed-switch v0, :pswitch_data_0

    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 723
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 724
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->e:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 726
    invoke-virtual {p2, v5}, Landroid/view/View;->setId(I)V

    .line 727
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 728
    iget-object v1, p0, Landroid/support/v7/internal/widget/p;->e:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    :cond_1
    :goto_0
    return-object p2

    .line 733
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e0070

    if-eq v0, v1, :cond_3

    .line 734
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->e:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 737
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/p;->e:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 739
    const v0, 0x7f0e0071

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 740
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/p;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 741
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 744
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/p;->b:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/p;->c:Z

    if-eqz v0, :cond_4

    .line 747
    invoke-static {p2, v5}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    goto :goto_0

    .line 749
    :cond_4
    invoke-static {p2, v4}, Landroid/support/v4/view/ViewCompat;->b(Landroid/view/View;Z)V

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x3

    return v0
.end method
