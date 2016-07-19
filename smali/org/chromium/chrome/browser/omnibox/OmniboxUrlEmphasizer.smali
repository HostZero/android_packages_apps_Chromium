.class public Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;
.super Ljava/lang/Object;
.source "OmniboxUrlEmphasizer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static deEmphasizeUrl(Landroid/text/Spannable;)V
    .locals 4

    .prologue
    .line 227
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->getEmphasisSpans(Landroid/text/Spannable;)[Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSpan;

    move-result-object v1

    .line 228
    array-length v0, v1

    if-nez v0, :cond_1

    .line 232
    :cond_0
    return-void

    .line 229
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 230
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static emphasizeUrl(Landroid/text/Spannable;Landroid/content/res/Resources;Lorg/chromium/chrome/browser/profiles/Profile;IZZZ)V
    .locals 10

    .prologue
    .line 131
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    :cond_0
    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {p2, v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->parseForEmphasizeComponents(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;

    move-result-object v4

    .line 141
    sget v0, Lorg/chromium/chrome/R$color;->url_emphasis_non_emphasized_text:I

    .line 142
    if-nez p5, :cond_2

    .line 143
    sget v0, Lorg/chromium/chrome/R$color;->url_emphasis_light_non_emphasized_text:I

    .line 146
    :cond_2
    iget v5, v4, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeStart:I

    .line 147
    iget v1, v4, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeStart:I

    iget v2, v4, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeLength:I

    add-int v6, v1, v2

    .line 149
    iget v7, v4, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostStart:I

    .line 150
    iget v1, v4, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostStart:I

    iget v2, v4, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostLength:I

    add-int v8, v1, v2

    .line 154
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hasScheme()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    if-nez p4, :cond_8

    if-eqz p6, :cond_8

    .line 157
    const/4 v2, 0x0

    .line 158
    packed-switch p3, :pswitch_data_0

    .line 177
    :pswitch_0
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->$assertionsDisabled:Z

    if-nez v1, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_1
    move v1, v0

    .line 180
    :goto_0
    if-eqz v2, :cond_3

    .line 181
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSecurityErrorSpan;

    invoke-direct {v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSecurityErrorSpan;-><init>()V

    .line 182
    const/16 v9, 0x21

    invoke-interface {p0, v2, v5, v6, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 186
    :cond_3
    :goto_1
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    invoke-static {p1, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-direct {v2, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 187
    const/16 v1, 0x21

    invoke-interface {p0, v2, v5, v6, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 193
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hasHost()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    invoke-static {p1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 196
    const/16 v2, 0x21

    invoke-interface {p0, v1, v6, v7, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 201
    :cond_4
    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hasHost()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 203
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_domain_and_registry:I

    .line 204
    if-nez p5, :cond_5

    .line 205
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_light_domain_and_registry:I

    .line 207
    :cond_5
    new-instance v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    invoke-static {p1, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-direct {v2, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 208
    const/16 v1, 0x21

    invoke-interface {p0, v2, v7, v8, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 211
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v8, v1, :cond_6

    .line 212
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;

    invoke-static {p1, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    invoke-direct {v1, v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisColorSpan;-><init>(I)V

    .line 214
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x21

    invoke-interface {p0, v1, v8, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 218
    :cond_6
    return-void

    .line 163
    :pswitch_2
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_start_scheme_security_warning:I

    .line 164
    const/4 v2, 0x1

    .line 165
    goto :goto_0

    .line 167
    :pswitch_3
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_start_scheme_security_error:I

    .line 168
    const/4 v2, 0x1

    .line 169
    goto :goto_0

    .line 171
    :pswitch_4
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_start_scheme_ev_secure:I

    goto :goto_0

    .line 174
    :pswitch_5
    sget v1, Lorg/chromium/chrome/R$color;->url_emphasis_start_scheme_secure:I

    goto :goto_0

    :cond_7
    move v1, v0

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getEmphasisSpans(Landroid/text/Spannable;)[Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSpan;
    .locals 3

    .prologue
    .line 251
    const/4 v0, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSpan;

    return-object v0
.end method

.method public static getOriginEndIndex(Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;)I
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->parseForEmphasizeComponents(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hasScheme()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 288
    :cond_0
    iget v1, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeStart:I

    .line 289
    iget v2, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeStart:I

    iget v3, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->schemeLength:I

    add-int/2addr v2, v3

    .line 290
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 293
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 294
    :cond_1
    iget v1, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostStart:I

    iget v0, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;->hostLength:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 295
    :cond_2
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const/4 v0, 0x0

    goto :goto_0

    .line 298
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public static hasEmphasisSpans(Landroid/text/Spannable;)Z
    .locals 1

    .prologue
    .line 241
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->getEmphasisSpans(Landroid/text/Spannable;)[Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$UrlEmphasisSpan;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeParseForEmphasizeComponents(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)[I
.end method

.method public static parseForEmphasizeComponents(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;
    .locals 6

    .prologue
    .line 74
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->nativeParseForEmphasizeComponents(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)[I

    move-result-object v0

    .line 75
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    sget-boolean v1, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_1
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxUrlEmphasizer$EmphasizeComponentsResponse;-><init>(IIII)V

    return-object v1
.end method
