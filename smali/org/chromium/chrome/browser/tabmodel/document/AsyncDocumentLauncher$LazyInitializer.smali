.class Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LazyInitializer;
.super Ljava/lang/Object;
.source "AsyncDocumentLauncher.java"


# static fields
.field private static final sInstance:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;-><init>(Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$1;)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LazyInitializer;->sInstance:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher$LazyInitializer;->sInstance:Lorg/chromium/chrome/browser/tabmodel/document/AsyncDocumentLauncher;

    return-object v0
.end method
