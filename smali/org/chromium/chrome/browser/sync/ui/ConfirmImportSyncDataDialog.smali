.class public Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;
.super Landroid/app/DialogFragment;
.source "ConfirmImportSyncDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CONFIRM_IMPORT_SYNC_DATA_DIALOG_TAG:Ljava/lang/String; = "sync_account_switch_import_data_tag"

.field private static final SYNC_DATA_TYPES:[I


# instance fields
.field private mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

.field private mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

.field private mListener:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->$assertionsDisabled:Z

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->SYNC_DATA_TYPES:[I

    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->SYNC_DATA_TYPES:[I

    return-object v0
.end method

.method private static newInstance(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;)Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;-><init>()V

    .line 82
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string/jumbo v2, "lastAccountName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string/jumbo v2, "newAccountName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string/jumbo v2, "importSyncType"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 86
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->setArguments(Landroid/os/Bundle;)V

    .line 87
    return-object v0
.end method

.method private setListener(Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;)V
    .locals 1

    .prologue
    .line 178
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mListener:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mListener:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;

    .line 180
    return-void
.end method

.method public static showNewInstance(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;Landroid/app/FragmentManager;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;)V
    .locals 2

    .prologue
    .line 105
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;)Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;

    move-result-object v0

    .line 108
    invoke-direct {v0, p4}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->setListener(Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;)V

    .line 109
    const-string/jumbo v1, "sync_account_switch_import_data_tag"

    invoke-virtual {v0, p3, v1}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 110
    return-void
.end method


# virtual methods
.method public onBrowsingDataCleared()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/signin/SigninManager;->clearLastSignedInUser()V

    .line 214
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mListener:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mListener:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;->onConfirm()V

    .line 215
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 184
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 185
    const-string/jumbo v0, "Signin_ImportDataPrompt_Cancel"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mListener:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;

    if-eqz v0, :cond_0

    .line 190
    sget-boolean v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->isChecked()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const-string/jumbo v0, "Signin_ImportDataPrompt_ImportData"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mListener:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$Listener;->onConfirm()V

    goto :goto_0

    .line 196
    :cond_3
    const-string/jumbo v0, "Signin_ImportDataPrompt_DontImport"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 198
    new-instance v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;-><init>()V

    .line 199
    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;

    invoke-direct {v1, p0, v0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$2;-><init>(Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkModel;->runAfterBookmarkModelLoaded(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 114
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "lastAccountName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "newAccountName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "importSyncType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    .line 119
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 120
    sget v4, Lorg/chromium/chrome/R$layout;->confirm_import_sync_data:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 122
    sget v1, Lorg/chromium/chrome/R$id;->sync_import_data_prompt:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    sget-object v5, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->SWITCHING_SYNC_ACCOUNTS:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    if-ne v0, v5, :cond_0

    .line 125
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$string;->sync_import_data_prompt_switching_accounts:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    sget v1, Lorg/chromium/chrome/R$id;->sync_confirm_import_choice:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    iput-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    .line 136
    sget v1, Lorg/chromium/chrome/R$id;->sync_keep_separate_choice:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    iput-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    .line 139
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$string;->sync_import_existing_data_subtext:I

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v5, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v6

    sget-object v1, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->SWITCHING_SYNC_ACCOUNTS:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    if-ne v0, v1, :cond_1

    sget v1, Lorg/chromium/chrome/R$string;->sync_keep_existing_data_separate_subtext_switching_accounts:I

    :goto_1
    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v8

    invoke-virtual {v6, v1, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 147
    new-array v1, v10, [Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    aput-object v2, v1, v9

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setRadioButtonGroup(Ljava/util/List;)V

    .line 150
    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v2, v1}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setRadioButtonGroup(Ljava/util/List;)V

    .line 153
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->get(Landroid/content/Context;)Lorg/chromium/chrome/browser/signin/SigninManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/signin/SigninManager;->getManagementDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :goto_2
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/chromium/chrome/R$string;->sync_import_data_title:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->continue_button:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$string;->cancel:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget v6, Lorg/chromium/chrome/R$string;->sync_import_data_prompt_existing_data:I

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v3, v7, v9

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    :cond_1
    sget v1, Lorg/chromium/chrome/R$string;->sync_keep_existing_data_separate_subtext_existing_data:I

    goto :goto_1

    .line 162
    :cond_2
    sget-object v1, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;->SWITCHING_SYNC_ACCOUNTS:Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog$ImportSyncType;

    if-ne v0, v1, :cond_3

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mKeepSeparateOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setChecked(Z)V

    goto :goto_2

    .line 165
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/ConfirmImportSyncDataDialog;->mConfirmImportOption:Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;

    invoke-virtual {v0, v8}, Lorg/chromium/chrome/browser/widget/RadioButtonWithDescription;->setChecked(Z)V

    goto :goto_2
.end method
