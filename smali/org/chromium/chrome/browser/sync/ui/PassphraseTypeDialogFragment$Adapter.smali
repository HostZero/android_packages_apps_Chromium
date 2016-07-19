.class public Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "PassphraseTypeDialogFragment.java"


# instance fields
.field private final mPassphraseTypes:Ljava/util/List;

.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;Ljava/util/List;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;

    .line 96
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->passphrase_type_item:I

    invoke-direct {p0, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 97
    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->mPassphraseTypes:Ljava/util/List;

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;Ljava/util/List;[Ljava/lang/String;Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;Ljava/util/List;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->getType(I)Lorg/chromium/sync/PassphraseType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/PassphraseType;->internalValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getPositionForType(Lorg/chromium/sync/PassphraseType;)I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->mPassphraseTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getType(I)Lorg/chromium/sync/PassphraseType;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->mPassphraseTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/sync/PassphraseType;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 121
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->getType(I)Lorg/chromium/sync/PassphraseType;

    move-result-object v2

    .line 122
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getCurrentTypeFromArguments()Lorg/chromium/sync/PassphraseType;

    move-result-object v1

    .line 123
    iget-object v3, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$Adapter;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->getIsEncryptEverythingAllowedFromArguments()Z
    invoke-static {v3}, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;->access$100(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/chromium/sync/PassphraseType;->getAllowedTypes(Z)Ljava/util/Set;

    move-result-object v3

    .line 127
    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 129
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 130
    return-object v0

    .line 127
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method
