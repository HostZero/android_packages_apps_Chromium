.class public Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;
.super Lorg/chromium/chrome/browser/firstrun/FirstRunPage;
.source "ToSAndUMAFirstRunFragment.java"


# instance fields
.field private mAcceptButton:Landroid/widget/Button;

.field private mSendReportCheckBox:Landroid/widget/CheckBox;

.field private mTosAndPrivacy:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 39
    sget v0, Lorg/chromium/chrome/R$layout;->fre_tosanduma:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 46
    sget v0, Lorg/chromium/chrome/R$id;->terms_accept:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mAcceptButton:Landroid/widget/Button;

    .line 47
    sget v0, Lorg/chromium/chrome/R$id;->send_report_checkbox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    .line 48
    sget v0, Lorg/chromium/chrome/R$id;->tos_and_privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mTosAndPrivacy:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mAcceptButton:Landroid/widget/Button;

    new-instance v3, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$1;

    invoke-direct {v3, p0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$1;-><init>(Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$dimen;->fre_tos_checkbox_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 58
    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    invoke-static {v4}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    invoke-static {v5}, Lorg/chromium/base/ApiCompatibilityUtils;->getPaddingEnd(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v6

    invoke-static {v3, v0, v4, v5, v6}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 64
    iget-object v3, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mSendReportCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->isNeverUploadCrashDump()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mTosAndPrivacy:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 68
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lorg/chromium/chrome/R$color;->ui_link_text_color:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 69
    new-instance v3, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$2;

    invoke-direct {v3, p0, v0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$2;-><init>(Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;I)V

    .line 78
    new-instance v4, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$3;

    invoke-direct {v4, p0, v0}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment$3;-><init>(Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;I)V

    .line 86
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->mTosAndPrivacy:Landroid/widget/TextView;

    sget v5, Lorg/chromium/chrome/R$string;->fre_tos_and_privacy:I

    invoke-virtual {p0, v5}, Lorg/chromium/chrome/browser/firstrun/ToSAndUMAFirstRunFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    new-instance v7, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v8, "<LINK1>"

    const-string/jumbo v9, "</LINK1>"

    invoke-direct {v7, v8, v9, v3}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v7, v6, v2

    new-instance v2, Lorg/chromium/ui/text/SpanApplier$SpanInfo;

    const-string/jumbo v3, "<LINK2>"

    const-string/jumbo v7, "</LINK2>"

    invoke-direct {v2, v3, v7, v4}, Lorg/chromium/ui/text/SpanApplier$SpanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Lorg/chromium/ui/text/SpanApplier;->applySpans(Ljava/lang/String;[Lorg/chromium/ui/text/SpanApplier$SpanInfo;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0
.end method

.method public shouldSkipPageOnCreate(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isFirstRunEulaAccepted()Z

    move-result v0

    return v0
.end method
