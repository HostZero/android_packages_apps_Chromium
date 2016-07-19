.class public final Landroid/support/v7/app/u;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field public A:Z

.field public B:[Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public G:Landroid/database/Cursor;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private K:I

.field public final a:Landroid/content/Context;

.field public final b:Landroid/view/LayoutInflater;

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/view/View;

.field public g:Ljava/lang/CharSequence;

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Ljava/lang/CharSequence;

.field public k:Landroid/content/DialogInterface$OnClickListener;

.field public l:Ljava/lang/CharSequence;

.field public m:Landroid/content/DialogInterface$OnClickListener;

.field public n:Z

.field public o:Landroid/content/DialogInterface$OnCancelListener;

.field public p:Landroid/content/DialogInterface$OnDismissListener;

.field public q:Landroid/content/DialogInterface$OnKeyListener;

.field public r:[Ljava/lang/CharSequence;

.field public s:Landroid/widget/ListAdapter;

.field public t:Landroid/content/DialogInterface$OnClickListener;

.field public u:I

.field public v:Landroid/view/View;

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput v0, p0, Landroid/support/v7/app/u;->c:I

    .line 763
    iput v0, p0, Landroid/support/v7/app/u;->K:I

    .line 786
    iput-boolean v0, p0, Landroid/support/v7/app/u;->A:Z

    .line 790
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/u;->E:I

    .line 814
    iput-object p1, p0, Landroid/support/v7/app/u;->a:Landroid/content/Context;

    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/u;->n:Z

    .line 816
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/u;->b:Landroid/view/LayoutInflater;

    .line 817
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/app/o;)V
    .locals 10

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 820
    iget-object v0, p0, Landroid/support/v7/app/u;->f:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 821
    iget-object v0, p0, Landroid/support/v7/app/u;->f:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/o;->a(Landroid/view/View;)V

    .line 836
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/u;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Landroid/support/v7/app/u;->g:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/o;->b(Ljava/lang/CharSequence;)V

    .line 839
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/u;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 840
    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/app/u;->h:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/u;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/o;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 843
    :cond_2
    iget-object v0, p0, Landroid/support/v7/app/u;->j:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 844
    const/4 v0, -0x2

    iget-object v1, p0, Landroid/support/v7/app/u;->j:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/u;->k:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/o;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 847
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/u;->l:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 848
    const/4 v0, -0x3

    iget-object v1, p0, Landroid/support/v7/app/u;->l:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/u;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/o;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 853
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/u;->r:[Ljava/lang/CharSequence;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/u;->G:Landroid/database/Cursor;

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/u;->s:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 1877
    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/u;->b:Landroid/view/LayoutInflater;

    invoke-static {p1}, Landroid/support/v7/app/o;->k(Landroid/support/v7/app/o;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 1880
    iget-boolean v0, p0, Landroid/support/v7/app/u;->C:Z

    if-eqz v0, :cond_f

    .line 1881
    iget-object v0, p0, Landroid/support/v7/app/u;->G:Landroid/database/Cursor;

    if-nez v0, :cond_e

    .line 1882
    new-instance v0, Landroid/support/v7/app/v;

    iget-object v2, p0, Landroid/support/v7/app/u;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v7/app/o;->l(Landroid/support/v7/app/o;)I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/app/u;->r:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/v;-><init>(Landroid/support/v7/app/u;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    .line 1949
    :goto_1
    invoke-static {p1, v0}, Landroid/support/v7/app/o;->a(Landroid/support/v7/app/o;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1950
    iget v0, p0, Landroid/support/v7/app/u;->E:I

    invoke-static {p1, v0}, Landroid/support/v7/app/o;->a(Landroid/support/v7/app/o;I)I

    .line 1952
    iget-object v0, p0, Landroid/support/v7/app/u;->t:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_13

    .line 1953
    new-instance v0, Landroid/support/v7/app/x;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/x;-><init>(Landroid/support/v7/app/u;Landroid/support/v7/app/o;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1976
    :cond_6
    :goto_2
    iget-object v0, p0, Landroid/support/v7/app/u;->J:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_7

    .line 1977
    iget-object v0, p0, Landroid/support/v7/app/u;->J:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1980
    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/app/u;->D:Z

    if-eqz v0, :cond_14

    .line 1981
    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1985
    :cond_8
    :goto_3
    invoke-static {p1, v6}, Landroid/support/v7/app/o;->a(Landroid/support/v7/app/o;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 856
    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/u;->v:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 857
    iget-boolean v0, p0, Landroid/support/v7/app/u;->A:Z

    if-eqz v0, :cond_15

    .line 858
    iget-object v1, p0, Landroid/support/v7/app/u;->v:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/app/u;->w:I

    iget v3, p0, Landroid/support/v7/app/u;->x:I

    iget v4, p0, Landroid/support/v7/app/u;->y:I

    iget v5, p0, Landroid/support/v7/app/u;->z:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/o;->a(Landroid/view/View;IIII)V

    .line 874
    :cond_a
    :goto_4
    return-void

    .line 823
    :cond_b
    iget-object v0, p0, Landroid/support/v7/app/u;->e:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 824
    iget-object v0, p0, Landroid/support/v7/app/u;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/o;->a(Ljava/lang/CharSequence;)V

    .line 826
    :cond_c
    iget-object v0, p0, Landroid/support/v7/app/u;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 827
    iget-object v0, p0, Landroid/support/v7/app/u;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/o;->a(Landroid/graphics/drawable/Drawable;)V

    .line 829
    :cond_d
    iget v0, p0, Landroid/support/v7/app/u;->c:I

    if-eqz v0, :cond_0

    .line 830
    iget v0, p0, Landroid/support/v7/app/u;->c:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/o;->c(I)V

    goto/16 :goto_0

    .line 1897
    :cond_e
    new-instance v1, Landroid/support/v7/app/w;

    iget-object v3, p0, Landroid/support/v7/app/u;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/u;->G:Landroid/database/Cursor;

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/w;-><init>(Landroid/support/v7/app/u;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Landroid/support/v7/app/o;)V

    move-object v0, v1

    goto :goto_1

    .line 1926
    :cond_f
    iget-boolean v0, p0, Landroid/support/v7/app/u;->D:Z

    if-eqz v0, :cond_10

    .line 1927
    invoke-static {p1}, Landroid/support/v7/app/o;->m(Landroid/support/v7/app/o;)I

    move-result v2

    .line 1932
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/u;->G:Landroid/database/Cursor;

    if-eqz v0, :cond_11

    .line 1933
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/u;->G:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v7/app/u;->H:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto/16 :goto_1

    .line 1929
    :cond_10
    invoke-static {p1}, Landroid/support/v7/app/o;->n(Landroid/support/v7/app/o;)I

    move-result v2

    goto :goto_5

    .line 1935
    :cond_11
    iget-object v0, p0, Landroid/support/v7/app/u;->s:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_12

    .line 1936
    iget-object v0, p0, Landroid/support/v7/app/u;->s:Landroid/widget/ListAdapter;

    goto/16 :goto_1

    .line 1938
    :cond_12
    new-instance v0, Landroid/support/v7/app/B;

    iget-object v1, p0, Landroid/support/v7/app/u;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/u;->r:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/support/v7/app/B;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1962
    :cond_13
    iget-object v0, p0, Landroid/support/v7/app/u;->F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v0, :cond_6

    .line 1963
    new-instance v0, Landroid/support/v7/app/y;

    invoke-direct {v0, p0, v6, p1}, Landroid/support/v7/app/y;-><init>(Landroid/support/v7/app/u;Landroid/widget/ListView;Landroid/support/v7/app/o;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    .line 1982
    :cond_14
    iget-boolean v0, p0, Landroid/support/v7/app/u;->C:Z

    if-eqz v0, :cond_8

    .line 1983
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_3

    .line 861
    :cond_15
    iget-object v0, p0, Landroid/support/v7/app/u;->v:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/o;->b(Landroid/view/View;)V

    goto/16 :goto_4

    .line 863
    :cond_16
    iget v0, p0, Landroid/support/v7/app/u;->u:I

    if-eqz v0, :cond_a

    .line 864
    iget v0, p0, Landroid/support/v7/app/u;->u:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/o;->a(I)V

    goto/16 :goto_4
.end method
