.class public Lorg/chromium/ui/autofill/AutofillPopup;
.super Lorg/chromium/ui/DropdownPopupWindow;
.source "AutofillPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

.field private final mContext:Landroid/content/Context;

.field private mSuggestions:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/chromium/ui/autofill/AutofillPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;Lorg/chromium/ui/autofill/AutofillDelegate;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/DropdownPopupWindow;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/ViewAndroidDelegate;)V

    .line 49
    iput-object p1, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    .line 50
    iput-object p3, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    .line 52
    invoke-virtual {p0, p0}, Lorg/chromium/ui/autofill/AutofillPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 53
    invoke-virtual {p0, p0}, Lorg/chromium/ui/autofill/AutofillPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 54
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillPopup;->disableHideOnOutsideTap()V

    .line 55
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/ui/R$string;->autofill_popup_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/autofill/AutofillPopup;->setContentDescriptionForAccessibility(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method


# virtual methods
.method public filterAndShow([Lorg/chromium/ui/autofill/AutofillSuggestion;Z)V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 69
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 70
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lorg/chromium/ui/autofill/AutofillSuggestion;->getSuggestionId()I

    move-result v3

    .line 71
    const/4 v4, -0x3

    if-ne v3, v4, :cond_0

    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    :cond_1
    new-instance v0, Lorg/chromium/ui/DropdownAdapter;

    iget-object v3, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1, v2}, Lorg/chromium/ui/DropdownAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V

    invoke-virtual {p0, v0}, Lorg/chromium/ui/autofill/AutofillPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-virtual {p0, p2}, Lorg/chromium/ui/autofill/AutofillPopup;->setRtl(Z)V

    .line 80
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillPopup;->show()V

    .line 81
    invoke-virtual {p0}, Lorg/chromium/ui/autofill/AutofillPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-interface {v0}, Lorg/chromium/ui/autofill/AutofillDelegate;->dismissed()V

    .line 107
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownAdapter;

    .line 87
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    invoke-virtual {v0, p3}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 88
    sget-boolean v1, Lorg/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-interface {v1, v0}, Lorg/chromium/ui/autofill/AutofillDelegate;->suggestionSelected(I)V

    .line 90
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/DropdownAdapter;

    .line 95
    invoke-virtual {v0, p3}, Lorg/chromium/ui/DropdownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/autofill/AutofillSuggestion;

    .line 96
    invoke-virtual {v0}, Lorg/chromium/ui/autofill/AutofillSuggestion;->isDeletable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mSuggestions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 99
    sget-boolean v1, Lorg/chromium/ui/autofill/AutofillPopup;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_1
    iget-object v1, p0, Lorg/chromium/ui/autofill/AutofillPopup;->mAutofillDelegate:Lorg/chromium/ui/autofill/AutofillDelegate;

    invoke-interface {v1, v0}, Lorg/chromium/ui/autofill/AutofillDelegate;->deleteSuggestion(I)V

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method
