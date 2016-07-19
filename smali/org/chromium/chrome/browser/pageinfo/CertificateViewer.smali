.class Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;
.super Ljava/lang/Object;
.source "CertificateViewer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mCertificateFactory:Ljava/security/cert/CertificateFactory;

.field private final mContext:Landroid/content/Context;

.field private final mPadding:I

.field private final mTitles:Ljava/util/ArrayList;

.field private final mViews:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mViews:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mTitles:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->connection_info_padding_wide:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    return v0
.end method

.method private addCertificate([B)V
    .locals 4

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mCertificateFactory:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "SHA-256"

    invoke-static {p1, v1}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->getDigest([BLjava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "SHA-1"

    invoke-static {p1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->getDigest([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addCertificateDetails(Ljava/security/cert/Certificate;[B[B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    const-string/jumbo v1, "CertViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error parsing certificate"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addCertificateDetails(Ljava/security/cert/Certificate;[B[B)V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 146
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 150
    new-instance v1, Landroid/a/a/a;

    invoke-direct {v1}, Landroid/a/a/a;-><init>()V

    .line 152
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mTitles:Ljava/util/ArrayList;

    invoke-static {}, Landroid/a/a/a;->a()Landroid/support/customtabs/a;

    invoke-static {}, Landroid/support/customtabs/a;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertIssuedToText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertInfoCommonNameText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/a/a/a;->a()Landroid/support/customtabs/a;

    invoke-static {}, Landroid/support/customtabs/a;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertInfoOrganizationText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/a/a/a;->a()Landroid/support/customtabs/a;

    invoke-static {}, Landroid/support/customtabs/a;->getOName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertInfoOrganizationUnitText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/a/a/a;->a()Landroid/support/customtabs/a;

    invoke-static {}, Landroid/support/customtabs/a;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertInfoSerialNumberText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/16 v3, 0x3a

    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->formatBytes([BC)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertIssuedByText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertInfoCommonNameText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/a/a/a;->b()Landroid/support/customtabs/a;

    invoke-static {}, Landroid/support/customtabs/a;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertInfoOrganizationText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/a/a/a;->b()Landroid/support/customtabs/a;

    invoke-static {}, Landroid/support/customtabs/a;->getOName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertInfoOrganizationUnitText()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/a/a/a;->b()Landroid/support/customtabs/a;

    invoke-static {}, Landroid/support/customtabs/a;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertValidityText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    .line 174
    invoke-static {}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->nativeGetCertIssuedOnText()Ljava/lang/String;

    .line 1019
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addItem(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    .line 195
    invoke-direct {p0, p1, p3}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addValue(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 5

    .prologue
    .line 199
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 200
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAlignment(Landroid/view/View;I)V

    .line 201
    iget v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 202
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->connection_info_popup_text:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    return-object v0
.end method

.method private addSectionTitle(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addLabel(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    .line 188
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 189
    return-void
.end method

.method private addValue(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 211
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 212
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAlignment(Landroid/view/View;I)V

    .line 213
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    const/4 v2, 0x0

    iget v3, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    iget v4, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 215
    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$color;->connection_info_popup_text:I

    invoke-static {v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 217
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method private static formatBytes([BC)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 222
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 223
    const-string/jumbo v3, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 225
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDigest([BLjava/lang/String;)[B
    .locals 1

    .prologue
    .line 233
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 234
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 235
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 237
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeGetCertExpiresOnText()Ljava/lang/String;
.end method

.method private static native nativeGetCertFingerprintsText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoCommonNameText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoOrganizationText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoOrganizationUnitText()Ljava/lang/String;
.end method

.method private static native nativeGetCertInfoSerialNumberText()Ljava/lang/String;
.end method

.method private static native nativeGetCertIssuedByText()Ljava/lang/String;
.end method

.method private static native nativeGetCertIssuedOnText()Ljava/lang/String;
.end method

.method private static native nativeGetCertIssuedToText()Ljava/lang/String;
.end method

.method private static native nativeGetCertSHA1FingerprintText()Ljava/lang/String;
.end method

.method private static native nativeGetCertSHA256FingerprintText()Ljava/lang/String;
.end method

.method private static native nativeGetCertValidityText()Ljava/lang/String;
.end method

.method public static showCertificateChain(Landroid/content/Context;[[B)V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->showCertificateChain([[B)V

    .line 55
    return-void
.end method

.method private showCertificateChain([[B)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 68
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 69
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->addCertificate([B)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;

    iget-object v2, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    const v3, 0x1090008

    iget-object v4, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mTitles:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2, v3, v4}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer$1;-><init>(Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;Landroid/content/Context;ILjava/util/List;)V

    .line 83
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 89
    sget v4, Lorg/chromium/chrome/R$string;->certtitle:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 90
    invoke-static {v3, v9}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAlignment(Landroid/view/View;I)V

    .line 91
    const v4, 0x1030042

    invoke-static {v3, v4}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 92
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 93
    iget v4, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    iget v5, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    iget v6, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    iget v7, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mPadding:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 94
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    new-instance v3, Landroid/widget/Spinner;

    iget-object v4, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-static {v3, v9}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAlignment(Landroid/view/View;I)V

    .line 98
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 100
    const/4 v0, -0x1

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 102
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/Spinner;->setPadding(IIII)V

    .line 103
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 106
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    :goto_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 109
    if-eqz v1, :cond_1

    .line 110
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :cond_1
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_2
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 116
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->showDialogForView(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method private showDialogForView(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 123
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 125
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 129
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 243
    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 244
    iget-object v0, p0, Lorg/chromium/chrome/browser/pageinfo/CertificateViewer;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-ne v1, p3, :cond_0

    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 244
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 247
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 251
    return-void
.end method
