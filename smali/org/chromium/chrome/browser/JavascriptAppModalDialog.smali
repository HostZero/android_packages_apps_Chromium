.class public Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.super Ljava/lang/Object;
.source "JavascriptAppModalDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDialog:Landroid/support/v7/app/AlertDialog;

.field private final mMessage:Ljava/lang/String;

.field private mNativeDialogPointer:J

.field private final mNegativeButtonTextId:I

.field private final mPositiveButtonTextId:I

.field private mPromptTextView:Landroid/widget/TextView;

.field private final mShouldShowSuppressCheckBox:Z

.field private mSuppressCheckBox:Landroid/widget/CheckBox;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mTitle:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mMessage:Ljava/lang/String;

    .line 46
    iput p3, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mPositiveButtonTextId:I

    .line 47
    iput p4, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNegativeButtonTextId:I

    .line 48
    iput-boolean p5, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mShouldShowSuppressCheckBox:Z

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZLorg/chromium/chrome/browser/JavascriptAppModalDialog$1;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/JavascriptAppModalDialog;Z)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->cancel(Z)V

    return-void
.end method

.method private cancel(Z)V
    .locals 4

    .prologue
    .line 155
    iget-wide v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 156
    iget-wide v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->nativeDidCancelAppModalDialog(JZ)V

    .line 158
    :cond_0
    return-void
.end method

.method private confirm(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 149
    iget-wide v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 150
    iget-wide v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->nativeDidAcceptAppModalDialog(JLjava/lang/String;Z)V

    .line 152
    :cond_0
    return-void
.end method

.method public static createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 6

    .prologue
    .line 54
    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    sget v3, Lorg/chromium/chrome/R$string;->ok:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-object v0
.end method

.method public static createBeforeUnloadDialog(Ljava/lang/String;Ljava/lang/String;ZZ)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 6

    .prologue
    .line 68
    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    if-eqz p2, :cond_0

    sget v3, Lorg/chromium/chrome/R$string;->reload:I

    :goto_0
    sget v4, Lorg/chromium/chrome/R$string;->cancel:I

    move-object v1, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-object v0

    :cond_0
    sget v3, Lorg/chromium/chrome/R$string;->leave:I

    goto :goto_0
.end method

.method public static createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 6

    .prologue
    .line 61
    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    sget v3, Lorg/chromium/chrome/R$string;->ok:I

    sget v4, Lorg/chromium/chrome/R$string;->cancel:I

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-object v0
.end method

.method public static createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$JavascriptAppPromptDialog;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method private dismiss()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:J

    .line 164
    return-void
.end method

.method public static getCurrentDialogForTest()Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->nativeGetCurrentModalDialog()Lorg/chromium/chrome/browser/JavascriptAppModalDialog;

    move-result-object v0

    return-object v0
.end method

.method private native nativeDidAcceptAppModalDialog(JLjava/lang/String;Z)V
.end method

.method private native nativeDidCancelAppModalDialog(JZ)V
.end method

.method private static native nativeGetCurrentModalDialog()Lorg/chromium/chrome/browser/JavascriptAppModalDialog;
.end method


# virtual methods
.method public getDialogForTest()Landroid/support/v7/app/AlertDialog;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 120
    packed-switch p2, :pswitch_data_0

    .line 130
    const-string/jumbo v0, "JavascriptAppModalDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unexpected button pressed in dialog: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mPromptTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->confirm(Ljava/lang/String;Z)V

    .line 123
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->cancel(Z)V

    .line 127
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected prepare(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 136
    sget v0, Lorg/chromium/chrome/R$id;->suppress_js_modal_dialogs:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mShouldShowSuppressCheckBox:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    sget v0, Lorg/chromium/chrome/R$id;->js_modal_dialog_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 136
    goto :goto_0

    .line 144
    :cond_1
    sget v0, Lorg/chromium/chrome/R$id;->js_modal_dialog_message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method showJavascriptAppModalDialog(Lorg/chromium/ui/base/WindowAndroid;J)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 82
    sget-boolean v0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 85
    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0, p2, p3, v4}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->nativeDidCancelAppModalDialog(JZ)V

    .line 116
    :goto_0
    return-void

    .line 91
    :cond_1
    iput-wide p2, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNativeDialogPointer:J

    .line 93
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 94
    sget v2, Lorg/chromium/chrome/R$layout;->js_modal_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 95
    sget v2, Lorg/chromium/chrome/R$id;->suppress_js_modal_dialogs:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mSuppressCheckBox:Landroid/widget/CheckBox;

    .line 96
    sget v2, Lorg/chromium/chrome/R$id;->js_modal_dialog_prompt:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mPromptTextView:Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->prepare(Landroid/view/ViewGroup;)V

    .line 100
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    sget v3, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v2, v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/JavascriptAppModalDialog$1;-><init>(Lorg/chromium/chrome/browser/JavascriptAppModalDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 109
    iget v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mPositiveButtonTextId:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mPositiveButtonTextId:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 110
    :cond_2
    iget v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNegativeButtonTextId:I

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mNegativeButtonTextId:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 112
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 113
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 114
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getDelegate()Landroid/support/v7/app/E;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/E;->a(Z)V

    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/JavascriptAppModalDialog;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
