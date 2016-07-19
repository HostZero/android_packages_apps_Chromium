.class public Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;
.super Ljava/lang/Object;
.source "ConnectionInfoPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCertificateLayout:Landroid/view/ViewGroup;

.field private mCertificateViewer:Landroid/widget/TextView;

.field private final mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private mDescriptionLayout:Landroid/view/ViewGroup;

.field private final mDialog:Landroid/app/Dialog;

.field private mLinkUrl:Ljava/lang/String;

.field private mMoreInfoLink:Landroid/widget/TextView;

.field private final mNativeConnectionInfoPopup:J

.field private final mPaddingThin:I

.field private final mPaddingWide:I

.field private mResetCertDecisionsButton:Landroid/widget/Button;

.field private final mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    .line 57
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContainer:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContainer:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->connection_info_padding_wide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingWide:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->connection_info_padding_thin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingThin:I

    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingWide:I

    iget v2, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingWide:I

    iget v3, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingWide:I

    iget v4, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingWide:I

    iget v5, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingThin:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 71
    invoke-static {p0, p2}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->nativeInit(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mNativeConnectionInfoPopup:J

    .line 72
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$1;-><init>(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)V

    .line 87
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;

    invoke-direct {v2, p0, v0}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup$2;-><init>(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContentsObserver;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mNativeConnectionInfoPopup:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;J)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->nativeDestroy(J)V

    return-void
.end method

.method private addCertificateSection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->addSection(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 105
    sget-boolean v1, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_0
    sget v1, Lorg/chromium/chrome/R$id;->connection_info_text_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateLayout:Landroid/view/ViewGroup;

    .line 107
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-direct {p0, p4}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->setCertificateViewer(Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void
.end method

.method private addDescriptionSection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->addSection(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 119
    sget-boolean v1, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDescriptionLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_0
    sget v1, Lorg/chromium/chrome/R$id;->connection_info_text_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDescriptionLayout:Landroid/view/ViewGroup;

    .line 121
    return-void
.end method

.method private addMoreInfoLink(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    .line 180
    const-string/jumbo v0, "https://support.google.com/chrome/answer/95617"

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mLinkUrl:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->website_settings_popup_text_link:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    iget v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingThin:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDescriptionLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method private addResetCertDecisionsButton(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    sget-boolean v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mNativeConnectionInfoPopup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 158
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 160
    :cond_1
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    sget v1, Lorg/chromium/chrome/R$drawable;->connection_info_reset_cert_decisions:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->connection_info_popup_reset_cert_decisions_button:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 168
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 172
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingWide:I

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 174
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method private addSection(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$layout;->connection_info:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    sget v0, Lorg/chromium/chrome/R$id;->connection_info_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 127
    invoke-static {p1}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v2

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    sget v0, Lorg/chromium/chrome/R$id;->connection_info_headline:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :cond_0
    sget v0, Lorg/chromium/chrome/R$id;->connection_info_description:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 137
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    return-object v1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeGetCertificateChain(Lorg/chromium/content_public/browser/WebContents;)[[B
.end method

.method private static native nativeInit(Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method private native nativeResetCertDecisions(JLorg/chromium/content_public/browser/WebContents;)V
.end method

.method private setCertificateViewer(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 144
    sget-boolean v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 145
    :cond_0
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->website_settings_popup_text_link:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    iget v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mPaddingThin:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 152
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public static show(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    .prologue
    .line 242
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V

    .line 243
    return-void
.end method

.method private showDialog()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 193
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 194
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 195
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 202
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 206
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mResetCertDecisionsButton:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    .line 207
    iget-wide v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mNativeConnectionInfoPopup:J

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->nativeResetCertDecisions(JLorg/chromium/content_public/browser/WebContents;)V

    .line 208
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mCertificateViewer:Landroid/widget/TextView;

    if-ne v0, p1, :cond_2

    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->nativeGetCertificateChain(Lorg/chromium/content_public/browser/WebContents;)[[B

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 216
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->showCertificateChain(Landroid/content/Context;[[B)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mMoreInfoLink:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 218
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 220
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mLinkUrl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 221
    const-string/jumbo v1, "create_new_tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 222
    const-string/jumbo v1, "com.android.browser.application_id"

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 226
    const-string/jumbo v1, "ConnectionInfoPopup"

    const-string/jumbo v2, "Bad URI %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/chromium/chrome/browser/pageinfo/ConnectionInfoPopup;->mLinkUrl:Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
