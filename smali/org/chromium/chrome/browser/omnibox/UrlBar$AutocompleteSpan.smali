.class Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;
.super Ljava/lang/Object;
.source "UrlBar.java"


# instance fields
.field private mAutocompleteText:Ljava/lang/CharSequence;

.field private mUserText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;)V
    .locals 0

    .prologue
    .line 1112
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;Lorg/chromium/chrome/browser/omnibox/UrlBar$1;)V
    .locals 0

    .prologue
    .line 1112
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;-><init>(Lorg/chromium/chrome/browser/omnibox/UrlBar;)V

    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mAutocompleteText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mUserText:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public clearSpan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1135
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1136
    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mAutocompleteText:Ljava/lang/CharSequence;

    .line 1137
    iput-object v1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mUserText:Ljava/lang/CharSequence;

    .line 1138
    return-void
.end method

.method public setSpan(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1122
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->this$0:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1123
    invoke-interface {v0, p0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 1124
    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mAutocompleteText:Ljava/lang/CharSequence;

    .line 1125
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/UrlBar$AutocompleteSpan;->mUserText:Ljava/lang/CharSequence;

    .line 1126
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1131
    return-void
.end method
