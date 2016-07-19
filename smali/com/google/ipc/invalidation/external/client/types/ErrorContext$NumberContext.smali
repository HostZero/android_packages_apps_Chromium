.class public Lcom/google/ipc/invalidation/external/client/types/ErrorContext$NumberContext;
.super Lcom/google/ipc/invalidation/external/client/types/ErrorContext;
.source "ErrorContext.java"


# instance fields
.field private number:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/ipc/invalidation/external/client/types/ErrorContext;-><init>()V

    .line 31
    iput p1, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorContext$NumberContext;->number:I

    .line 32
    return-void
.end method


# virtual methods
.method getNumber()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/ipc/invalidation/external/client/types/ErrorContext$NumberContext;->number:I

    return v0
.end method
