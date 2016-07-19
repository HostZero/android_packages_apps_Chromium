.class Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel$LazyHolder;
.super Ljava/lang/Object;
.source "EmptyTabModel.java"


# static fields
.field private static final INSTANCE:Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel$LazyHolder;->INSTANCE:Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel$LazyHolder;->INSTANCE:Lorg/chromium/chrome/browser/tabmodel/EmptyTabModel;

    return-object v0
.end method
