.class public Lcom/google/vrtoolkit/cardboard/b/a;
.super Ljava/lang/Object;
.source "Clock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1027
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
