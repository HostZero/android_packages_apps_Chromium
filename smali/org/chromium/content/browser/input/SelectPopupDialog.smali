.class public Lorg/chromium/content/browser/input/SelectPopupDialog;
.super Ljava/lang/Object;
.source "SelectPopupDialog.java"

# interfaces
.implements Lorg/chromium/content/browser/input/SelectPopup;


# static fields
.field private static final SELECT_DIALOG_ATTRS:[I


# instance fields
.field private final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

.field private final mListBoxPopup:Landroid/app/AlertDialog;

.field private mSelectionNotified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lorg/chromium/content/R$attr;->select_dialog_multichoice:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lorg/chromium/content/R$attr;->select_dialog_singlechoice:I

    aput v2, v0, v1

    sput-object v0, Lorg/chromium/content/browser/input/SelectPopupDialog;->SELECT_DIALOG_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/ContentViewCore;Landroid/content/Context;Ljava/util/List;Z[I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 42
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 47
    if-eqz p4, :cond_0

    .line 48
    const v3, 0x104000a

    new-instance v4, Lorg/chromium/content/browser/input/SelectPopupDialog$1;

    invoke-direct {v4, p0, v1}, Lorg/chromium/content/browser/input/SelectPopupDialog$1;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    const/high16 v3, 0x1040000

    new-instance v4, Lorg/chromium/content/browser/input/SelectPopupDialog$2;

    invoke-direct {v4, p0}, Lorg/chromium/content/browser/input/SelectPopupDialog$2;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    :cond_0
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    .line 63
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupAdapter;

    iget-object v3, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, p4}, Lorg/chromium/content/browser/input/SelectPopupDialog;->getSelectDialogLayout(Z)I

    move-result v4

    invoke-direct {v2, v3, v4, p3}, Lorg/chromium/content/browser/input/SelectPopupAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 68
    if-eqz p4, :cond_1

    .line 69
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 70
    :goto_0
    array-length v2, p5

    if-ge v0, v2, :cond_2

    .line 71
    aget v2, p5, v0

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 75
    new-instance v2, Lorg/chromium/content/browser/input/SelectPopupDialog$3;

    invoke-direct {v2, p0, v1}, Lorg/chromium/content/browser/input/SelectPopupDialog$3;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;Landroid/widget/ListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    array-length v2, p5

    if-lez v2, :cond_2

    .line 84
    aget v2, p5, v0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 85
    aget v0, p5, v0

    invoke-virtual {v1, v0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 88
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    new-instance v1, Lorg/chromium/content/browser/input/SelectPopupDialog$4;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/input/SelectPopupDialog$4;-><init>(Lorg/chromium/content/browser/input/SelectPopupDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ListView;)[I
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->getSelectedIndices(Landroid/widget/ListView;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/content/browser/input/SelectPopupDialog;[I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/content/browser/input/SelectPopupDialog;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private getSelectDialogLayout(Z)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lorg/chromium/content/R$style;->SelectPopupDialog:I

    sget-object v3, Lorg/chromium/content/browser/input/SelectPopupDialog;->SELECT_DIALOG_ATTRS:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 100
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 101
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    return v0

    .line 100
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getSelectedIndices(Landroid/widget/ListView;)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 108
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 109
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 108
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-array v4, v2, [I

    move v0, v1

    .line 114
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 115
    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    aput v5, v4, v1

    move v1, v2

    .line 114
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    :cond_3
    return-object v4
.end method

.method private notifySelection([I)V
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mSelectionNotified:Z

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->selectPopupMenuItems([I)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mSelectionNotified:Z

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V

    .line 141
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/SelectPopupDialog;->mListBoxPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/input/SelectPopupDialog;->notifySelection([I)V

    goto :goto_0
.end method
