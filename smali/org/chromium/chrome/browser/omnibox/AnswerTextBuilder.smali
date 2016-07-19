.class Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;
.super Ljava/lang/Object;
.source "AnswerTextBuilder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    return-void
.end method

.method private static appendAndStyleText(Landroid/text/SpannableStringBuilder;Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;ILandroid/graphics/Paint$FontMetrics;F)V
    .locals 7

    .prologue
    const/16 v6, 0x21

    .line 154
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->getText()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->getType()I

    move-result v1

    .line 158
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 162
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 163
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 166
    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getAnswerTextSizeSp(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 167
    invoke-virtual {p0, v3, v2, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 169
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getAnswerTextColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 170
    invoke-virtual {p0, v3, v2, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 172
    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 173
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder$TopAlignedSpan;

    const/16 v3, 0xd

    invoke-direct {v1, v3, p2, p3, p4}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder$TopAlignedSpan;-><init>(IILandroid/graphics/Paint$FontMetrics;F)V

    .line 176
    invoke-virtual {p0, v1, v2, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 178
    :cond_0
    return-void
.end method

.method static buildSpannable(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;Landroid/graphics/Paint$FontMetrics;F)Landroid/text/Spannable;
    .locals 5

    .prologue
    .line 83
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 87
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getMaxTextHeightSp(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;)I

    move-result v3

    .line 89
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->getTextFields()Ljava/util/List;

    move-result-object v4

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 91
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    invoke-static {v2, v0, v3, p1, p2}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->appendAndStyleText(Landroid/text/SpannableStringBuilder;Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;ILandroid/graphics/Paint$FontMetrics;F)V

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->hasAdditionalText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v0, "  "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->getAdditionalText()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    move-result-object v0

    .line 96
    invoke-static {v2, v0, v3, p1, p2}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->appendAndStyleText(Landroid/text/SpannableStringBuilder;Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;ILandroid/graphics/Paint$FontMetrics;F)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->hasStatusText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    const-string/jumbo v0, "  "

    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->getStatusText()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    move-result-object v0

    .line 101
    invoke-static {v2, v0, v3, p1, p2}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->appendAndStyleText(Landroid/text/SpannableStringBuilder;Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;ILandroid/graphics/Paint$FontMetrics;F)V

    .line 104
    :cond_2
    return-object v2
.end method

.method private static getAnswerTextColor(I)I
    .locals 4

    .prologue
    const v1, -0x777778

    const/high16 v0, -0x1000000

    .line 225
    packed-switch p0, :pswitch_data_0

    .line 253
    const-string/jumbo v1, "AnswerTextBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown answer type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 231
    goto :goto_0

    .line 235
    :pswitch_2
    const v0, -0x3ac6d7

    goto :goto_0

    .line 237
    :pswitch_3
    const v0, -0xf47fbd

    goto :goto_0

    .line 243
    :pswitch_4
    const v0, -0xff0100

    goto :goto_0

    .line 245
    :pswitch_5
    const/high16 v0, -0x10000

    goto :goto_0

    .line 247
    :pswitch_6
    const v0, -0xffff01

    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 249
    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private static getAnswerTextSizeSp(I)I
    .locals 4

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xd

    const/16 v1, 0xf

    .line 186
    packed-switch p0, :pswitch_data_0

    .line 214
    const-string/jumbo v0, "AnswerTextBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unknown answer type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 215
    :goto_0
    :pswitch_0
    return v0

    .line 188
    :pswitch_1
    const/16 v0, 0x1c

    goto :goto_0

    .line 190
    :pswitch_2
    const/16 v0, 0x18

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 194
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 196
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 198
    goto :goto_0

    .line 200
    :pswitch_6
    const/16 v0, 0xc

    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 202
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 204
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 206
    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 208
    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 212
    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method static getMaxTextHeightSp(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 114
    .line 116
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->getTextFields()Ljava/util/List;

    move-result-object v3

    move v1, v0

    move v2, v0

    .line 117
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 118
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getAnswerTextSizeSp(I)I

    move-result v0

    .line 119
    if-le v0, v2, :cond_0

    move v2, v0

    .line 117
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->hasAdditionalText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->getAdditionalText()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getAnswerTextSizeSp(I)I

    move-result v0

    .line 125
    if-le v0, v2, :cond_2

    move v2, v0

    .line 129
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->hasStatusText()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->getStatusText()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$TextField;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getAnswerTextSizeSp(I)I

    move-result v0

    .line 131
    if-le v0, v2, :cond_3

    move v2, v0

    .line 136
    :cond_3
    return v2
.end method
