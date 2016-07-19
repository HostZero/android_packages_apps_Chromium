.class Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$LazyHolder;
.super Ljava/lang/Object;
.source "DelayedInvalidationsController.java"


# static fields
.field private static final INSTANCE:Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$LazyHolder;->INSTANCE:Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController$LazyHolder;->INSTANCE:Lorg/chromium/chrome/browser/invalidation/DelayedInvalidationsController;

    return-object v0
.end method
