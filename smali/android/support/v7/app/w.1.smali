.class final Landroid/support/v7/app/w;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# instance fields
.field private final a:I

.field private final b:I

.field private synthetic c:Landroid/widget/ListView;

.field private synthetic d:Landroid/support/v7/app/o;

.field private synthetic e:Landroid/support/v7/app/u;


# direct methods
.method constructor <init>(Landroid/support/v7/app/u;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Landroid/support/v7/app/o;)V
    .locals 2

    .prologue
    .line 897
    iput-object p1, p0, Landroid/support/v7/app/w;->e:Landroid/support/v7/app/u;

    iput-object p5, p0, Landroid/support/v7/app/w;->c:Landroid/widget/ListView;

    iput-object p6, p0, Landroid/support/v7/app/w;->d:Landroid/support/v7/app/o;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 902
    invoke-virtual {p0}, Landroid/support/v7/app/w;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 903
    iget-object v1, p0, Landroid/support/v7/app/w;->e:Landroid/support/v7/app/u;

    iget-object v1, v1, Landroid/support/v7/app/u;->H:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/w;->a:I

    .line 904
    iget-object v1, p0, Landroid/support/v7/app/w;->e:Landroid/support/v7/app/u;

    iget-object v1, v1, Landroid/support/v7/app/u;->I:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/w;->b:I

    .line 905
    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 909
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 911
    iget v2, p0, Landroid/support/v7/app/w;->a:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 912
    iget-object v2, p0, Landroid/support/v7/app/w;->c:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    iget v0, p0, Landroid/support/v7/app/w;->b:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 914
    return-void

    .line 912
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 918
    iget-object v0, p0, Landroid/support/v7/app/w;->e:Landroid/support/v7/app/u;

    iget-object v0, v0, Landroid/support/v7/app/u;->b:Landroid/view/LayoutInflater;

    iget-object v1, p0, Landroid/support/v7/app/w;->d:Landroid/support/v7/app/o;

    invoke-static {v1}, Landroid/support/v7/app/o;->l(Landroid/support/v7/app/o;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
