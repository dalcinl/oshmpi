/* -*- Mode: C{} c-basic-offset:4 {} -*- */
/*
 *  (C) 2022 by Argonne National Laboratory.
 *      See COPYRIGHT in top-level directory.
 *
 * This file is automatically generated. DO NOT EDIT.
 */

#include <shmem.h>
#include "oshmpi_impl.h"
/* TPL_BLOCK_START */

int shmem_TYPENAME_and_reduce(shmem_team_t team, TYPE * dest, const TYPE * source, size_t nreduce)
{
    OSHMPI_team_t *team_obj;
    OSHMPI_TEAM_GET_OBJ(team, team_obj);
    OSHMPI_allreduce_team(team_obj, dest, source, nreduce, MPI_TYPE, MPI_BAND);
    return SHMEM_SUCCESS;
}

int shmem_TYPENAME_or_reduce(shmem_team_t team, TYPE * dest, const TYPE * source, size_t nreduce)
{
    OSHMPI_team_t *team_obj;
    OSHMPI_TEAM_GET_OBJ(team, team_obj);
    OSHMPI_allreduce_team(team_obj, dest, source, nreduce, MPI_TYPE, MPI_BOR);
    return SHMEM_SUCCESS;
}

int shmem_TYPENAME_xor_reduce(shmem_team_t team, TYPE * dest, const TYPE * source, size_t nreduce)
{
    OSHMPI_team_t *team_obj;
    OSHMPI_TEAM_GET_OBJ(team, team_obj);
    OSHMPI_allreduce_team(team_obj, dest, source, nreduce, MPI_TYPE, MPI_BXOR);
    return SHMEM_SUCCESS;
}
/* TPL_BLOCK_END */
