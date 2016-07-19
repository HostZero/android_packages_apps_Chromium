.class public Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;
.super Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;
.source "AutofillSaveCardInfoBar.java"


# instance fields
.field private final mCardDetails:Ljava/util/List;

.field private final mLegalMessageLines:Ljava/util/LinkedList;

.field private final mNativeAutofillSaveCardInfoBar:J


# direct methods
.method private constructor <init>(JILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 136
    invoke-static {p3}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v1

    move-object v0, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mCardDetails:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mLegalMessageLines:Ljava/util/LinkedList;

    .line 138
    iput-wide p1, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mNativeAutofillSaveCardInfoBar:J

    .line 139
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;)J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mNativeAutofillSaveCardInfoBar:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->nativeOnLegalMessageLinkClicked(JLjava/lang/String;)V

    return-void
.end method

.method private addDetail(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mCardDetails:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private addLegalMessageLine(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mLegalMessageLines:Ljava/util/LinkedList;

    new-instance v1, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method private addLinkToLastLegalMessageLine(IILjava/lang/String;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mLegalMessageLines:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;->links:Ljava/util/List;

    new-instance v1, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;-><init>(IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-void
.end method

.method private static create(JILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;
    .locals 10

    .prologue
    .line 159
    new-instance v1, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;

    move-wide v2, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;-><init>(JILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private native nativeOnLegalMessageLinkClicked(JLjava/lang/String;)V
.end method


# virtual methods
.method public createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V
    .locals 8

    .prologue
    .line 201
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/infobar/ConfirmInfoBar;->createContent(Lorg/chromium/chrome/browser/infobar/InfoBarLayout;)V

    .line 202
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/infobar/InfoBarLayout;->addControlLayout()Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;

    move-result-object v1

    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mCardDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;

    .line 204
    iget v3, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;->issuerIconDrawableId:I

    iget-object v4, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;->label:Ljava/lang/String;

    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$CardDetail;->subLabel:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v0}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addIcon(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;->mLegalMessageLines:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;

    .line 208
    new-instance v3, Landroid/text/SpannableString;

    iget-object v4, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;->text:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine;->links:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;

    .line 210
    new-instance v5, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;

    invoke-direct {v5, p0, v0}, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$1;-><init>(Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar;Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;)V

    iget v6, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;->start:I

    iget v0, v0, Lorg/chromium/chrome/browser/infobar/AutofillSaveCardInfoBar$LegalMessageLine$Link;->end:I

    const/16 v7, 0x11

    invoke-virtual {v3, v5, v6, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 217
    :cond_1
    invoke-virtual {v1, v3}, Lorg/chromium/chrome/browser/infobar/InfoBarControlLayout;->addDescription(Ljava/lang/CharSequence;)Landroid/view/View;

    goto :goto_1

    .line 219
    :cond_2
    return-void
.end method
