.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;
.super Ljava/lang/Object;
.source "SnippetsManager.java"


# static fields
.field public static final NUM_SNIPPETS_ACTIONS:I = 0x3

.field public static final SNIPPETS_CLICKED:I = 0x2

.field public static final SNIPPETS_SCROLLED:I = 0x1

.field public static final SNIPPETS_SHOWN:I = 0x0

.field public static final SNIPPETS_STATE_HISTOGRAM:Ljava/lang/String; = "NewTabPage.Snippets.Interactions"

.field public static final SNIPPET_ITEM_TYPE_HEADER:I = 0x1

.field public static final SNIPPET_ITEM_TYPE_SNIPPET:I = 0x2


# instance fields
.field private mDataAdapter:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;

.field private mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

.field private mSnippetsBridge:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;Lorg/chromium/chrome/browser/profiles/Profile;)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    .line 161
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;-><init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mDataAdapter:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;

    .line 162
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;

    new-instance v1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$1;-><init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V

    invoke-direct {v0, p2, v1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mSnippetsBridge:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mDataAdapter:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mSnippetsBridge:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->destroy()V

    .line 187
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mNewTabPageManager:Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/ntp/NewTabPageView$NewTabPageManager;->open(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setSnippetsView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mDataAdapter:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/aG;)V

    .line 179
    return-void
.end method
